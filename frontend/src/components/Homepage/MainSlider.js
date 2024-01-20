import "./mainSlider.css"
// import CategorySearch from "../CategorySearch/CategorySearch";
import Navigation from "../Navigation";
import { useState,useEffect } from "react";
import food from './foods/t.jpg'


const MainSlider=()=>{
  const [urlIndex, setUrlIndex] = useState(0);
  const imageUrls = [
    food,
    // "https://heygrillhey.com/static/3e7dcda4833982d321694fa2ad2a5040/GrilledFlankSteak-4.jpg",
    "https://media.istockphoto.com/id/851159308/photo/close-up-of-home-made-burgers.jpg?s=612x612&w=0&k=20&c=TqT6yxMqvv4C-kqq-256tDPHdvgJDQejtxOCsc4_O4A=",

  ];
// const headings=[
//   "Discover Your Favorite Places!",
//   "Make a Review!",
//   "Upload Pictures!"
// ]


 useEffect(() => {
  const changeImage = () => {
    setUrlIndex((urlIndex + 1) % imageUrls.length);
  };
  const interval = setInterval(() => {
    changeImage();
  }, 3000);
   return () => clearInterval(interval);
 }, [urlIndex, imageUrls.length]);

    return (
      <div
        className="slider"
        style={{
          backgroundImage: `url(${imageUrls[urlIndex]})`,
          backgroundSize: "cover",
          backgroundPosition: "center",
        }}
      >
        <div className="dark">
          <Navigation />
          <div className="mainHeadingDiv">
            <h1 className="mainImgHeader">
              {" "}
              DineDiscovery
              <i
                className="fa-brands fa-yelp"
                style={{ fontSize: "90px", color: "Red" }}
              ></i>
            </h1>
            <h1 className="mainImgHeader subHeader">
              Discover Your Favorite Places!
            </h1>
          </div>
        </div>
      </div>
    );
}
export default MainSlider
