import { BrowserRouter, Routes, Route } from "react-router-dom";
import { useState, useEffect } from "react";
import "./index.css";
import Login from "./pages/Login";
import NavBar from "./components/NavBar";
import Instructors from "./pages/Instructors";
import Students from "./pages/Students";
import Courses from "./pages/Courses";
import EachInstructor from "./components/EachInstructor";

function App() {
  const [user, setUser] = useState(null)
  const[instructors, setInstructors] = useState([]);

  useEffect(() => {
    fetch("/me")
    .then((response) => {
      if(response.ok) {
        response.json().then((user) => setUser(user))
      }
    });
  }, []);

  if(!user) return <Login onLogin={setUser} />;

  fetch("/instructors")
  .then((response) => response.json())
  .then(setInstructors)

  return (
    <BrowserRouter>
      <NavBar setUser={setUser} />
      <section>
        <Routes>
          <Route exact path="/" element={<Courses />} />
          <Route exact path="/instructors" element={<Instructors instructors={instructors} />} />
          <Route exact path="/instructors/:id" element={<EachInstructor instructors={instructors} />} />
          <Route exact path="/students" element={<Students />} />
          <Route path="*" element={<h1 className="text-indigo-900/100 text-5xl underline m-2 font-bold">404: Page Not Found!</h1>} />
        </Routes>
        
      </section>
    </BrowserRouter>
  );
}

export default App;
