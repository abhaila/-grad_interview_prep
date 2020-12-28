# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

maths_img = URI.open('https://images.unsplash.com/photo-1453733190371-0a9bedd82893?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')

puts "Cleaning database..."

User.destroy_all
Course.destroy_all

puts "Creating users...."

areeb = User.create!(email: "areeb@grad.com", password: "COVID-19")

puts "Creating courses..."
maths = Course.create!(name: "Maths", course_type: "Online Test", paid_material: "True", description: "
                                                                                                 Many graduate employers require their applicants to take online tests before they consider inviting them to interview. As an applicant it can be frustratingly time consuming but as an employer it is a way of reducing the applicant pool to a reasonable size. Whilst this may punish candidates that lack maths skills but are otherwise exceptional it is not uncommon for an employer to receive one thousand applicants per advertised position. Reviewing a thousand CV's and cover letters in a reasonable amount of time is simply impossible for the majority of humans.

                                                                                                 Whilst employers are looking at better ways to utilise online testing, maths is still an integral part of both online tests and interviews, especially for entry-level jobs in consulting and investment banking. Oliver Wyman have been using their online numerical test for many years and although the questions occasionally change, the style of the questions remain the same.

                                                                                                 The questions are a mix between brainteasers and maths questions. For example:

                                                                                                 Question

  ​

                                                                                                My grandson is about as many days as my daughter in weeks, and my grandson is as many months as I am in years. Together we are 120 years. How old am I?

                          ​

                                                                                                Answer

                          ​

                                                                                                72.



                                                                                                This makes the grandson 6 and the daughter 42. It can be solved by creating the following system of equations:



                                                                                                Let m be my age in years. If s is my son's age in years, then my son is 52s weeks old. If g is my grandson's age in years, then my grandson is 365g days old. Thus, 365g = 52s.



                                                                                                Since my grandson is 12g months old, 12g = m.

                          ​

                                                                                                Since my grandson, my son and I together are 120 years, g + s + m = 120.

                          ​

                                                                                                The above system of 3 equations in 3 unknowns (g, s and m) can be solved as follows:



                                                                                                m / 12 + 365 m / (52 x 12) + m = 120 or

                          ​

                                                                                                52 m + 365 m + 624 m = 624 x 120 or

                          ​

                                                                                                m = 624 x 120 / 1041 = 72

                          ​

                                                                                                So, I am 72 years old.



                                                                                                Many graduate employers require their applicants to take online tests before they consider inviting them to interview. As an applicant it can be frustratingly time consuming but as an employer it is a way of reducing the applicant pool to a reasonable size. Whilst this may punish candidates that lack maths skills but are otherwise exceptional it is not uncommon for an employer to receive one thousand applicants per advertised position. Reviewing a thousand CV's and cover letters in a reasonable amount of time is simply impossible for the majority of humans.

                                                                                                ​

                                                                                                Whilst employers are looking at better ways to utilise online testing, maths is still an integral part of both online tests and interviews, especially for entry-level jobs in consulting and investment banking. Oliver Wyman have been using their online numerical test for many years and although the questions occasionally change, the style of the questions remain the same.

                                                                                                ​

                                                                                                The questions are a mix between brainteasers and maths questions. For example:

                                                                                                ​

                                                                                                Question

                                                                                                ​

                                                                                                My grandson is about as many days as my daughter in weeks, and my grandson is as many months as I am in years. Together we are 120 years. How old am I?

                                                                                                ​

                                                                                                Answer

                                                                                                ​

                                                                                                72.



                                                                                                This makes the grandson 6 and the daughter 42. It can be solved by creating the following system of equations:



                                                                                                Let m be my age in years. If s is my son's age in years, then my son is 52s weeks old. If g is my grandson's age in years, then my grandson is 365g days old. Thus, 365g = 52s.



                                                                                                Since my grandson is 12g months old, 12g = m.

                                                                                                ​

                                                                                                Since my grandson, my son and I together are 120 years, g + s + m = 120.

                                                                                                ​

                                                                                                The above system of 3 equations in 3 unknowns (g, s and m) can be solved as follows:



                                                                                                m / 12 + 365 m / (52 x 12) + m = 120 or

                                                                                                ​

                                                                                                52 m + 365 m + 624 m = 624 x 120 or

                                                                                                ​

                                                                                                m = 624 x 120 / 1041 = 72

                                                                                                ​

                                                                                                So, I am 72 years old.



                                                                                                Candidates are given 20 minutes in order to solve 30 of these questions so all candidates are time constrained given the complexity of some of the questions. The most important thing to remember is that the test is negatively marked. Do not guess even though it is multiple choice and do not worry if you don't get to the end. Precision is highly rewarded i
                                                                                                Whilst the majority of the questions do not exceed GCSE difficulty in the calculations required, almost all applicants will have last seen a GCSE maths question five years ago. Unfortunately, applicants that didn't take maths orientated A-level or degree subjects are at an immediate disadvantage and it is definitely worth brushing up on your maths skills.
                                                                                                Even those that have gone on to utilise maths skills at A-level or degree-level should re-visit the maths required as it is often very different and has the potential to draw out mistakes. Isosceles triangles, algebra and the radius of a circle become incredibly hard when the stopwatch is ticking!
                                                                                                It is true that there are also many people that rely on friends and family to take these parts of the assessment on their behalf. However, this is an increasingly risky strategy as more employers require their applicants to take a similar test at assessment days. It is definitely worth making sure you can answer the questions correctly yourself.

                                                                                                For those that are looking to give themselves the best chance of passing a general maths online test you can practice with our free download that includes questions asked by some of the UK's top employers.", example_question: "nothing")
maths.photo.attach(io: maths_img, filename: 'maths.jpeg', content_type: 'image/jpeg')

puts "Done! #{User.count} users created."
puts "Done! #{Course.count} courses created."
