
// ==========================================
// ĐỊNH NGHĨA MÀU SẮC (BẢNG MÀU CHUYÊN NGHIỆP)
// ==========================================
#let primary-blue = rgb("#0F4C81")   // Xanh dương đậm (Học thuật)
#let accent-gold = rgb("#F2C94C")    // Vàng Gold (Điểm nhấn)
#let text-gray = rgb("#4A4A4A")      // Xám đậm cho chữ phụ

// ==========================================
// HÀM TẠO TRANG BÌA (COVER PAGE FUNCTION)
// ==========================================
#let make-cover(
  title: "TÊN ĐỀ TÀI",
  subtitle: "Phụ đề",
  author: "Tác giả",
  date: "Tháng 9 năm 2026",
  school: "TRƯỜNG ĐẠI HỌC SƯ PHẠM HÀ NỘI",
  department: "KHOA TOÁN HỌC"
) = {
  // Cấu hình trang bìa: Lề 0 để màu sắc tràn viền
  set page(margin: 0pt, header: none, footer: none, numbering: none)
  
  // Nền trên cùng (Dải màu xanh)
  rect(
    width: 100%,
    height: 6cm,
    fill: primary-blue,
  )
  
  // Logo và Tên trường (Đặt trong dải màu xanh)
  place(
    top + center,
    dy: 1.2cm,
    block(
      align(center),
      // Vẽ logo giả lập (Hình tròn)
      circle(radius: 1cm, fill: white, stroke: 2pt + accent-gold),
      v(0.3cm),
      text(fill: white, size: 12pt, weight: "bold")[#school],
      v(0.1cm),
      text(fill: white, size: 10pt, style: "italic")[#department],
    )
  )
  
  // Tiêu đề chính (Đặt ở giữa trang)
  place(
    top + center,
    dy: 8cm,
    block(
      width: 80%,
      align(center),
      text(size: 22pt, weight: "bold", fill: primary-blue, lang: "vi")[
        #upper(title)
      ],
      v(0.5cm),
      // Đường kẻ trang trí
      line(length: 60%, stroke: 2pt + accent-gold),
      v(0.5cm),
      text(size: 14pt, style: "italic", fill: text-gray)[#subtitle]
    )
  )
  
  // Thông tin tác giả (Đặt ở dưới cùng)
  place(
    top + center,
    dy: 17cm,
    block(
      width: 70%,
      align(center),
      text(size: 13pt, fill: text-gray)[
        **Người thực hiện:** \
        #text(size: 16pt, weight: "bold", fill: primary-blue)[#author]
      ],
      v(1cm),
      text(size: 12pt, fill: text-gray)[#date]
    )
  )
  
  // Hình trang trí gốc dưới (Hình tam giác - biểu tượng toán học)
  place(
    bottom + right,
    dx: -1cm,
    dy: 1cm,
    path(
      (0pt, 3cm),
      (2cm, 0pt),
      (4cm, 3cm),
      stroke: 3pt + accent-gold,
      fill: none
    )
  )
  
  pagebreak()
}

// ==========================================
// GỌI HÀM TẠO TRANG BÌA VÀ ÁP DỤNG TEMPLATE
// ==========================================

// 1. Tạo trang bìa trước
#make-cover(
  title: "ỨNG DỤNG CỦA ĐỒNG DƯ THỨC TRONG GIẢI TOÁN SỐ HỌC LỚP 8 – 9",
  subtitle: "Phân dạng, phương pháp và định hướng dạy học theo năng lực",
  author: "Đặng Thanh Quý",
  date: "Tháng 9 năm 2026",
  school: "TRƯỜNG ĐẠI HỌC SƯ PHẠM HÀ NỘI",
  department: "KHOA TOÁN HỌC"
)

// 2. Sau đó áp dụng template "project" của bạn cho phần nội dung còn lại
// LƯU Ý: Bạn cần giữ nguyên dòng #show: project.with(...) gốc của bạn ở đây.
// Tuy nhiên, hãy kiểm tra xem template đó có tự động tạo trang bìa không.
// Nếu có, bạn cần tìm cách tắt nó (ví dụ: cover: false) để tránh bị trùng lặp 2 trang bìa.
#show: project.with(
  title: "ỨNG DỤNG CỦA ĐỒNG DƯ THỨC TRONG GIẢI TOÁN SỐ HỌC LỚP 8 – 9",
  authors: ("Đặng Thanh Quý",),
  date: "Tháng 9 năm 2026",
)

// ==========================================
// NỘI DUNG TÀI LIỆU BẮT ĐẦU TỪ ĐÂY
// ==========================================
// (Các phần như Mở đầu, Chương 1, 2... bạn giữ nguyên như cũ)