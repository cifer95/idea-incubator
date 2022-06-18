-- FOR H2 InMem Database copy paste the following into the H2 Console

-- IDEA Categories
INSERT INTO idea_categories (id, category_name)
VALUES (1, 'Administration');
INSERT INTO idea_categories (id, category_name)
VALUES (2, 'Adult Services');
INSERT INTO idea_categories (id, category_name)
VALUES (3, 'Branches');
INSERT INTO idea_categories (id, category_name)
VALUES (4, 'Branding');
INSERT INTO idea_categories (id, category_name)
VALUES (5, 'Cataloging');
INSERT INTO idea_categories (id, category_name)
VALUES (6, 'Central');
INSERT INTO idea_categories (id, category_name)
VALUES (7, 'Childrens Services');
INSERT INTO idea_categories (id, category_name)
VALUES (8, 'Circulation');
INSERT INTO idea_categories (id, category_name)
VALUES (9, 'Collection Development');
INSERT INTO idea_categories (id, category_name)
VALUES (10, 'Collection Management');
INSERT INTO idea_categories (id, category_name)
VALUES (11, 'Communication');
INSERT INTO idea_categories (id, category_name)
VALUES (12, 'Community Partnerships');
INSERT INTO idea_categories (id, category_name)
VALUES (13, 'Community Relations');
INSERT INTO idea_categories (id, category_name)
VALUES (14, 'Consistency');
INSERT INTO idea_categories (id, category_name)
VALUES (15, 'Customer Experience');
INSERT INTO idea_categories (id, category_name)
VALUES (16, 'Customer Service');
INSERT INTO idea_categories (id, category_name)
VALUES (17, 'Efficiencies');
INSERT INTO idea_categories (id, category_name)
VALUES (18, 'Employee Engagement');
INSERT INTO idea_categories (id, category_name)
VALUES (19, 'Facilities');
INSERT INTO idea_categories (id, category_name)
VALUES (20, 'Human Resources');
INSERT INTO idea_categories (id, category_name)
VALUES (21, 'Library Spaces / Design');
INSERT INTO idea_categories (id, category_name)
VALUES (22, 'Location Specific (Branch / Unit only)');
INSERT INTO idea_categories (id, category_name)
VALUES (23, 'Management');
INSERT INTO idea_categories (id, category_name)
VALUES (24, 'Marketing');
INSERT INTO idea_categories (id, category_name)
VALUES (25, 'Organizational Health');
INSERT INTO idea_categories (id, category_name)
VALUES (26, 'Outreach');
INSERT INTO idea_categories (id, category_name)
VALUES (27, 'Patron Services');
INSERT INTO idea_categories (id, category_name)
VALUES (28, 'Processes');
INSERT INTO idea_categories (id, category_name)
VALUES (29, 'Programming');
INSERT INTO idea_categories (id, category_name)
VALUES (30, 'Public Computers');
INSERT INTO idea_categories (id, category_name)
VALUES (31, 'Recruitment and Hiring');
INSERT INTO idea_categories (id, category_name)
VALUES (32, 'Reference');
INSERT INTO idea_categories (id, category_name)
VALUES (33, 'Reference');
INSERT INTO idea_categories (id, category_name)
VALUES (34, 'Security');
INSERT INTO idea_categories (id, category_name)
VALUES (35, 'Service Improvement');
INSERT INTO idea_categories (id, category_name)
VALUES (36, 'Shelving');
INSERT INTO idea_categories (id, category_name)
VALUES (38, 'Staff Appreciation');
INSERT INTO idea_categories (id, category_name)
VALUES (39, 'Staff Education');
INSERT INTO idea_categories (id, category_name)
VALUES (40, 'Staffing');
INSERT INTO idea_categories (id, category_name)
VALUES (41, 'Technical Services');
INSERT INTO idea_categories (id, category_name)
VALUES (42, 'Technology');
INSERT INTO idea_categories (id, category_name)
VALUES (43, 'Teen Services');
INSERT INTO idea_categories (id, category_name)
VALUES (44, 'Training');
INSERT INTO idea_categories (id, category_name)
VALUES (45, 'Transparency of Organization');
INSERT INTO idea_categories (id, category_name)
VALUES (46, 'User Experience (Digital or Online Services)');
INSERT INTO idea_categories (id, category_name)
VALUES (47, 'Wellness');

-- Idea Resources
INSERT INTO idea_resources (id, resource_name)
VALUES (1, 'Equipment');
INSERT INTO idea_resources (id, resource_name)
VALUES (2, 'Printing');
INSERT INTO idea_resources (id, resource_name)
VALUES (3, 'Supply Costs');
INSERT INTO idea_resources (id, resource_name)
VALUES (4, 'Marketing');
INSERT INTO idea_resources (id, resource_name)
VALUES (5, 'Funding');
INSERT INTO idea_resources (id, resource_name)
VALUES (6, 'Capital Projects');
INSERT INTO idea_resources (id, resource_name)
VALUES (7, 'Facilities');
INSERT INTO idea_resources (id, resource_name)
VALUES (8, 'ITSD');
INSERT INTO idea_resources (id, resource_name)
VALUES (9, 'Staff Time');

-- Idea Statuses
INSERT INTO idea_status (id, status_name)
VALUES (1, 'Idea Submitted');
INSERT INTO idea_status (id, status_name)
VALUES (2, 'Idea Received by Supervisor');
INSERT INTO idea_status (id, status_name)
VALUES (3, 'Meeting Set with Innovator and Manager');
INSERT INTO idea_status (id, status_name)
VALUES (4, 'Idea Under Revision');
INSERT INTO idea_status (id, status_name)
VALUES (5, 'Meeting Set with Senior Management Team Members');
INSERT INTO idea_status (id, status_name)
VALUES (6, 'Idea Implemented');
INSERT INTO idea_status (id, status_name)
VALUES (7, 'Pending Future Resources');
INSERT INTO idea_status (id, status_name)
VALUES (8, 'Idea will not be Implemented');

-- Ideas
INSERT INTO ideas (id, idea_name, anticipated_outcomes, situation, proposed_solution, steps_involved, benefits_who, potential_obstacles, research, status_id, date_created, last_updated)
VALUES (1, 'test idea', 'test outcomes', 'test situation', 'test solution', 'test steps', 'SAPL', 'test obstacles', NULL, 1, {ts '2022-06-18 18:00:00'}, {ts '2022-06-18 18:00:00'});
INSERT INTO ideas (id, idea_name, anticipated_outcomes, situation, proposed_solution, steps_involved, benefits_who, potential_obstacles, research, status_id, date_created, last_updated)
VALUES (2, 'test idea 2', 'test outcomes', 'test situation', 'test solution', 'test steps', 'Me', 'test obstacles', NULL, 2, {ts '2022-06-18 18:00:00'}, {ts '2022-06-18 18:00:00'});
INSERT INTO ideas (id, idea_name, anticipated_outcomes, situation, proposed_solution, steps_involved, benefits_who, potential_obstacles, research, status_id, date_created, last_updated)
VALUES (3, 'test idea 3', 'test outcomes', 'test situation', 'test solution', 'test steps', 'COSA', 'test obstacles', NULL, 3, {ts '2022-06-18 18:00:00'}, {ts '2022-06-18 18:00:00'});

-- M2M IdeasResources
INSERT INTO idea_resource (resource_id, idea_id)
VALUES (1, 1);
INSERT INTO idea_resource (resource_id, idea_id)
VALUES (2, 1);
INSERT INTO idea_resource (resource_id, idea_id)
VALUES (3, 1);

-- M2M IdeasCategories
INSERT INTO category_idea (idea_id, category_id)
VALUES (1, 1);
INSERT INTO category_idea (idea_id, category_id)
VALUES (1, 4);
INSERT INTO category_idea (idea_id, category_id)
VALUES (1, 2);
INSERT INTO category_idea (idea_id, category_id)
VALUES (1, 3);
