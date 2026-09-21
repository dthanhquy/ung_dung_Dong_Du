// ============================================================
// TRANG README - GIỚI THIỆU TÀI LIỆU
// ============================================================
#page(
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  header: none,
  footer: none,
  numbering: none,
)[
  // ----- TIÊU ĐỀ CHÍNH -----
  #align(center)[
    #v(0.5cm)
    #text(size: 22pt, weight: "bold", fill: color-primary)[
      #upper("README — GIỚI THIỆU TÀI LIỆU")
    ]
    #v(0.3cm)
    #line(length: 70%, stroke: 1.5pt + color-primary)
    #v(0.5cm)
  ]

  // ----- KHỐI GIỚI THIỆU -----
  #block(
    width: 100%,
    fill: color-bg-light,
    stroke: (left: 4pt + color-primary),
    inset: 15pt,
    radius: 5pt,
  )[
    #text(size: 13pt, weight: "bold", fill: color-primary)[
      📘 Về tài liệu này
    ]
    #v(0.4cm)
    #text(size: 11pt)[
      Đây là chuyên đề **"Ứng dụng của Đồng dư thức trong giải toán Số học lớp 8 – 9"**,
      được biên soạn nhằm phục vụ công tác bồi dưỡng học sinh giỏi (HSG) môn Toán cấp
      Trung học cơ sở. Tài liệu cung cấp cho giáo viên và học sinh một hệ thống kiến
      thức bài bản, chuyên sâu và cập nhật về chủ đề Đồng dư thức — một trong những
      công cụ mạnh mẽ nhất của lý thuyết số sơ cấp.
    ]
  ]

  #v(0.8cm)

  // ----- MỤC ĐÍCH -----
  #block(
    width: 100%,
    fill: white,
    stroke: (left: 4pt + color-accent),
    inset: 15pt,
    radius: 5pt,
  )[
    #text(size: 13pt, weight: "bold", fill: color-accent)[
      🎯 Mục đích sử dụng
    ]
    #v(0.4cm)
    #text(size: 11pt)[
      Tài liệu được thiết kế cho ba đối tượng chính:
    ]
    #v(0.3cm)
    #grid(
      columns: (1.2cm, 1fr),
      row-gutter: 0.5cm,
      // Giáo viên
      [#align(center)[#text(size: 16pt)[👨‍🏫]]],
      [
        #text(weight: "bold")[Giáo viên:] Dùng làm tài liệu tham khảo để biên soạn
        bài giảng, xây dựng chuyên đề bồi dưỡng HSG, và thiết kế bài tập phân hóa
        theo cấp độ nhận thức.
      ],
      // Học sinh
      [#align(center)[#text(size: 16pt)[🎓]]],
      [
        #text(weight: "bold")[Học sinh:] Tự học, ôn luyện và nâng cao kỹ năng giải
        toán Số học, chuẩn bị cho các kỳ thi HSG các cấp (trường, huyện, tỉnh, thành phố).
      ],
      // Phụ huynh
      [#align(center)[#text(size: 16pt)[👨‍👩‍👧]]],
      [
        #text(weight: "bold")[Phụ huynh:] Tham khảo để đồng hành cùng con em trong
        quá trình học tập và bồi dưỡng năng khiếu Toán học.
      ],
    )
  ]

  #v(0.8cm)

  // ----- CẤU TRÚC TÀI LIỆU -----
  #block(
    width: 100%,
    fill: color-bg-accent,
    stroke: (left: 4pt + color-accent),
    inset: 15pt,
    radius: 5pt,
  )[
    #text(size: 13pt, weight: "bold", fill: color-accent)[
      📂 Cấu trúc tài liệu
    ]
    #v(0.4cm)
    #text(size: 11pt)[Tài liệu được chia thành 7 chương chính và phần phụ lục:]
    #v(0.4cm)
    #set enum(numbering: "1.", indent: 0.8cm)
    + *Chương 1 — Mở đầu:* Lý do chọn đề tài, mục đích, đối tượng, phương pháp nghiên cứu và cấu trúc đề tài.
    + *Chương 2 — Cơ sở lý luận và thực tiễn:* Tổng quan nghiên cứu, vị trí của Số học trong chương trình THCS, thực trạng và xu hướng ra đề thi HSG giai đoạn 2021–2026.
    + *Chương 3 — Hệ thống lý thuyết về Đồng dư thức:* Định nghĩa, tính chất, và các định lý quan trọng (Fermat nhỏ, Euler, Thặng dư Trung Hoa, Wilson).
    + *Chương 4 — Phân dạng bài tập và phương pháp giải:* Gồm 7 dạng bài tập chính và bài toán tổng hợp nâng cao, mỗi dạng đều có phương pháp giải, ví dụ minh họa và bài tập tương tự.
    + *Chương 5 — Ngân hàng câu hỏi:* Trích xuất từ các đề thi HSG thực tế theo từng dạng bài.
    + *Chương 6 — Dự đoán xu hướng ra đề:* Phân tích xu hướng chung và các dạng bài mới cần chú ý.
    + *Chương 7 — Kết luận:* Tổng kết kết quả nghiên cứu và đề xuất định hướng dạy học.
    + *Phụ lục:* 05 đề thi thử HSG Toán 8 và Toán 9 có đáp án.
  ]

  #v(0.8cm)

  // ----- HƯỚNG DẪN SỬ DỤNG -----
  #block(
    width: 100%,
    fill: color-bg-warn,
    stroke: (left: 4pt + color-warn),
    inset: 15pt,
    radius: 5pt,
  )[
    #text(size: 13pt, weight: "bold", fill: color-warn)[
      🚀 Hướng dẫn sử dụng hiệu quả
    ]
    #v(0.4cm)
    #text(size: 11pt)[Để khai thác tối đa tài liệu, bạn nên:]
    #v(0.3cm)
    #set enum(numbering: "Bước 1.", indent: 0.8cm)
    + *Nắm vững lý thuyết:* Đọc kỹ Chương 3 để hiểu rõ các khái niệm và định lý nền tảng.
    + *Học theo từng dạng bài:* Nghiên cứu phương pháp giải ở Chương 4, sau đó làm các bài tập tương tự để rèn luyện kỹ năng.
    + *Tự kiểm tra:* Sử dụng ngân hàng câu hỏi ở Chương 5 và các đề thi thử ở Phụ lục để đánh giá năng lực.
    + *Cập nhật xu hướng:* Tham khảo Chương 6 để có chiến lược ôn tập trọng tâm cho kỳ thi sắp tới.
  ]

  #v(0.8cm)

  // ----- THÔNG TIN TÁC GIẢ VÀ LIÊN HỆ -----
  #align(center)[
    #line(length: 50%, stroke: 1pt + color-primary)
    #v(0.4cm)
    #text(size: 12pt, weight: "bold", fill: color-primary)[
      ✍️ Tác giả: Đặng Thanh Quý
    ]
    #v(0.2cm)
    #text(size: 10pt, style: "italic", fill: gray)[
      Cập nhật lần cuối: Tháng 9 năm 2026
    ]
    #v(0.5cm)
    #text(size: 10pt, style: "italic", fill: gray)[
      Mọi ý kiến đóng góp, báo lỗi hoặc đề xuất cải thiện tài liệu \
      xin vui lòng liên hệ trực tiếp với tác giả.
    ]
  ]
]