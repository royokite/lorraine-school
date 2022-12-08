import { BrowserRouter, Routes, Route } from "react-router-dom";
import { useState, useEffect } from "react";
import "./index.css";
import Login from "./pages/Login";
import NavBar from "./components/NavBar";
import Instructors from "./pages/Instructors";
import Students from "./pages/Students";
import Courses from "./pages/Courses";
import EachInstructor from "./components/EachInstructor";
import EachStudent from "./components/EachStudent";
import NewStudentForm from "./components/NewStudentForm";

function App() {
  const [user, setUser] = useState(null)
  const[instructors, setInstructors] = useState([]);
  const[students, setStudents] = useState([]);

  useEffect(() => {
    fetch("/students")
    .then((response) => response.json())
    .then(setStudents)
    .catch(err => console.log(err))
  }, []);

  // useEffect(() => {
  //   fetch("/instructors")
  //   .then((response) => response.json())
  //   .then(setInstructors)
  // }, []);
  

  // useEffect(() => {
  //   fetch("/me")
  //   .then((response) => {
  //     if(response.ok) {
  //       response.json().then((user) => setUser(user))
  //     }
  //   });
  // }, []);

  // if(!user) return <Login onLogin={setUser} />;

  

  return (
    <BrowserRouter>
      <NavBar setUser={setUser} />
      <section>
        <Routes>
          <Route exact path="/" element={<Courses />} />
          <Route exact path="/instructors" element={<Instructors instructors={instructors} />} />
          <Route exact path="/instructors/:id" element={<EachInstructor instructors={instructors} />} />
          <Route exact path="/students" element={<Students students={students} setStudents={setStudents} />} />
          <Route exact path="/students/:id" element={<EachStudent students={students} setStudents={setStudents} />} />
          <Route exact path="/students/new" element={<NewStudentForm setStudents={setStudents} />} />
          <Route path="*" element={<h1 className="text-indigo-900/100 text-5xl underline m-2 font-bold">404: Page Not Found!</h1>} />
        </Routes>
        
      </section>
    </BrowserRouter>
  );
}

export default App;
