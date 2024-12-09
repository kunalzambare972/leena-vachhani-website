from flask import Flask, render_template
from db_connect import get_db_connection  # Import the database connection function

leena_vachhani = Flask(__name__, static_url_path='/leena-vachhani/static', static_folder='static', template_folder='templates')

@leena_vachhani.route('/leena-vachhani/')
def home():
    return render_template('index.html')

# Route for the "Research" page
@leena_vachhani.route('/leena-vachhani/research')
def research():
    conn = get_db_connection()
    if conn is None:
        return "Error connecting to the database", 500  # If connection fails, show error
    
    cursor = conn.cursor(dictionary=True)

    # Query to fetch projects data
    cursor.execute("""
        SELECT proj_name, proj_sponsor, 
               DATE_FORMAT(proj_start_date, '%b %Y') AS proj_start_date,
               DATE_FORMAT(proj_end_date, '%b %Y') AS proj_end_date, 
               proj_status
        FROM projects
    """)

    # Fetch all the results from the query (projects)
    projects_data = cursor.fetchall()

    # Now execute the query for publications
    cursor.execute("""
                   SELECT pub_citation, pub_type, pub_links
                   FROM publications
                   ORDER BY 
                   FIELD(pub_type, 'Journal', 'Conference', 'Book', 'Patent', 'Other');
    """)

    # Fetch all the results from the query (publications)
    publications_data = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template('research.html', projects=projects_data, publications=publications_data)

# Route for the "Academics" page
@leena_vachhani.route('/leena-vachhani/academics')
def academics():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Query to fetch student data including the new 'stud_degree' column
    cursor.execute("""
        SELECT stud_name, stud_guide, stud_coguide, stud_proj, stud_degree, stud_passing_year, stud_link
FROM students
ORDER BY 
    CASE
        WHEN stud_degree = 'PhD' THEN 1
        WHEN stud_degree = 'M. Tech' THEN 2
    END,
    CASE
        WHEN stud_passing_year = 'ongoing' THEN 1
        ELSE 2
    END,
    stud_passing_year DESC;
    """)
    
    # Fetch all the results from the query
    students_data = cursor.fetchall()
    
    # Fetching courses data
    cursor.execute("""
        SELECT 
            cour_code,
            cour_name,
            cour_link,
            cour_sem
        FROM courses
    """)
    courses_data = cursor.fetchall()
    
    # Fetch awards data
    cursor.execute("""
        SELECT 
            awards_id,
            awards_citation
        FROM awards
    """)
    awards_data = cursor.fetchall()

    # Fetch distinct years from the students table for the dropdown
    cursor.execute("""
        SELECT DISTINCT stud_passing_year FROM students ORDER BY stud_passing_year DESC;
    """)
    years_data = cursor.fetchall()

    # Closing the cursor and connection
    cursor.close()
    conn.close()

    # Rendering the 'academics.html' page with fetched data
    return render_template('academics.html', students=students_data, courses=courses_data, awards=awards_data, years=years_data)

# Route for the "Contact" page
@leena_vachhani.route('/leena-vachhani/contact')
def contact():
    return render_template('contact.html')

if __name__ == '__main__':
    leena_vachhani.run(host='0.0.0.0', port=5000, debug=True)
