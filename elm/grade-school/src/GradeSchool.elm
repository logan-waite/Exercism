module GradeSchool exposing (addStudent, allStudents, empty, studentsInGrade)

import Dict exposing (Dict)


type alias Grade =
    Int


type alias Student =
    String


type alias School =
    Dict Grade (List Student)


empty : School
empty =
    Dict.empty


addStudent : Grade -> Student -> School -> School
addStudent grade student school =
    Dict.update grade (updateClass student) school


updateClass : Student -> Maybe (List Student) -> Maybe (List Student)
updateClass student class =
    student
        :: Maybe.withDefault [] class
        |> List.sort
        |> Just


studentsInGrade : Grade -> School -> List Student
studentsInGrade grade school =
    Maybe.withDefault [] (Dict.get grade school)


allStudents : School -> List ( Grade, List Student )
allStudents school =
    Dict.toList school
