class Course {
  final String img;
  final String batch;
  final String seat;
  final String days;
  final String title;

  Course({
    required this.img,
    required this.batch,
    required this.seat,
    required this.days,
    required this.title,
  });
}

List<Course> courses = [
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg",

    batch: "ব্যাচ ৮ ",
    seat: "২২  টি সিট বাকি",
    days: "২১  দিন বাকি",
    title: "SQA: Manual & Automation Testing",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2025-12-08T14-25-01.527Z-Course-Thumbnail-12.jpg",
    batch: "ব্যাচ ১১",
    seat: "৬ টি সিট বাকি",
    days: "৬ দিন বাকি",
    title: "Full Stack Web Development with JavaScript(MERN) & AI",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2025-12-08T14-27-28.969Z-Flutter-Thumbnail.jpg",
    batch: "ব্যাচ ১৬ ",
    seat: "১৪ টি সিট বাকি",
    days: "১ দিন বাকি",
    title: "App Development with Flutter & AI",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2025-12-08T14-31-25.697Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg",
    batch: "ব্যাচ  ১০ ",
    seat: "৫  টি সিট বাকি",
    days: "৩২  দিন বাকি",
    title: "Full Stack Web Development with\nPython, Django, React & AI",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2025-01-23T12-32-14.452Z-Untitled-1%20(1)%20(1).jpg",
    batch: "ব্যাচ ১০",
    seat: "৩৬ টি সিট বাকি",
    days: "১২  দিন বাকি",
    title: "Mastering DevOps: From Fundamentals to Advanced Practices",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2024-12-23T06-07-44.087Z-Course%20Thumbnail%2016.jpg",
    batch: "ব্যাচ ১২",
    seat: "১৮  টি সিট বাকি",
    days: "১১  দিন বাকি",
    title: "Full Stack Web Development with PHP, Laravel, Vue Js & AI",
  ),
  Course(
    img:
        "https://cdn.ostad.app/course/cover/2025-06-30T13-13-06.980Z-python-course-thumb.jpg",
    batch: "ব্যাচ ৬",
    seat: "২৯  টি সিট বাকি",
    days: "১২ দিন বাকি",
    title: "Mastering Python : From Zero to Hero",
  ),
];
