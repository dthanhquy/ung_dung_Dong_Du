// BẢNG MÀU — đổi 3 dòng này để đổi toàn bộ màu chủ đề tài liệu
// ------------------------------------------------------------
#let color-primary   = rgb("#1B3A6B")   // xanh navy — heading, đường kẻ, tiêu đề chạy
#let color-accent    = rgb("#2E7D6B")   // xanh rêu — khung ví dụ
#let color-warn      = rgb("#B5651D")   // cam đất — khung nhận xét/lưu ý
#let color-bg-light  = rgb("#F4F6FA")   // nền khung định nghĩa
#let color-bg-accent = rgb("#F1F7F5")   // nền khung ví dụ
#let color-bg-warn   = rgb("#FBF1E8")   // nền khung nhận xét


// ---- Màu sắc ----
#let mau-dinhly = rgb("#e8f4f8")
#let vien-dinhly = rgb("#1f77b4")
#let mau-dinhnghia = rgb("#fff8e1")
#let vien-dinhnghia = rgb("#f39c12")
#let mau-vidu = rgb("#e8f8e8")
#let vien-vidu = rgb("#27ae60")
#let mau-chuy = rgb("#fdecea")
#let vien-chuy = rgb("#c0392b")
#let mau-nhanxet = rgb("#f4ecf7")
#let vien-nhanxet = rgb("#8e44ad")

// ---- Định nghĩa môi trường ----
#let dinhnghia(so, ten, noi-dung) = block(
  fill: mau-dinhnghia, stroke: (left: 2pt + vien-dinhnghia), inset: 10pt,
  radius: 3pt, width: 100%,
  [#h(-2em) #strong[Định nghĩa #so #h(0.1em) (#ten).] #noi-dung]
)

#let dinhly(so, ten, noi-dung) = block(
  fill: mau-dinhly, stroke: (left: 2pt + vien-dinhly), inset: 10pt,
  radius: 3pt, width: 100%,
  [#h(0em) #strong[Định lý #so #h(0.3em) (#ten).] #noi-dung],
)
#let vidu(so, noi-dung) = block(
  fill: mau-vidu, stroke: (left: 2pt + vien-vidu), inset: 10pt,
  radius: 3pt, width: 100%,
  [#h(0em) #strong[Ví dụ #so.] #noi-dung]
)

#let chuy(noi-dung) = block(
  fill: mau-chuy, stroke: (left: 2pt + vien-chuy), inset: 10pt,
  radius: 3pt, width: 100%,
  [#h(1em) #strong[Chú ý.] #noi-dung]
)

#let nhanxet(noi-dung) = block(
  fill: mau-nhanxet, stroke: (left: 2pt + vien-nhanxet), inset: 10pt,
  radius: 3pt, width: 100%,
  [#h(1em) #strong[Nhận xét.] #noi-dung]
)

#let loigiai(noi-dung) = block(
  inset: (left: 12pt), 
  [ #h(0em)#emph[Lời giải.] #noi-dung]
)


#show math.equation.where(block: false): set text(size: 1.05em)

#show math.equation.where(block: true): it => {
  set text(size: 1.05em)
  v(0.6em)
  it
  v(0.6em)
}

// (c) Cỡ script/subscript cũng phóng lớn tương ứng, tránh số mũ bị bé tí
#set math.equation(numbering: none)


// ------------------------------------------------------------
// BẢNG có hàng tiêu đề tô màu
// Dùng: #styled-table(columns: (auto, auto), [Cột 1], [Cột 2], [a], [b])
// ------------------------------------------------------------
#let styled-table(columns: none, ..cells) = table(
  columns: columns, align: left + horizon,
  stroke: 0.5pt + rgb("#CCCCCC"),
  fill: (x, y) => if y == 0 { color-primary } else if calc.odd(y) { color-bg-light } else { white },
  inset: 7pt,
  ..cells.pos().enumerate().map(((i, c)) => {
    if i < columns.len() { text(fill: white, weight: "bold")[#c] } else { c }
  })
)

// ---------------------------------------------
#let project(title: "", authors: (), date: none, body) = {

  // 1) Trang & số trang
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2cm),
    numbering: "1",
    number-align: center + bottom,
    header: context {
      let chs = query(heading.where(level: 1).before(here()))
      if chs.len() > 0 and here().page() > 1 {
        set text(size: 9pt, fill: color-primary)
        align(right)[#upper(chs.last().body)]
        v(-6pt)
        line(length: 100%, stroke: 0.4pt + color-primary)
      }
    },
  )

  // 2) Phông chữ & ngôn ngữ
  set text(font: ( "New Computer Modern"), size: 14pt, lang: "vi")

  // 3) Đoạn văn
  set par(justify: true, leading: 0.8em, first-line-indent:( amount: 1.27cm, all: true))
  show par: set block(spacing: 1.2em)

  // 4) Đánh số chương/mục — "1", "1.1", "1.1.1"
  set heading(numbering: "1.1")

  // 5) Heading cấp 1: có nhãn "CHƯƠNG x", canh giữa, đường kẻ màu bên dưới
  show heading.where(level: 1): it => {
    pagebreak(weak: true) 
  
    v(0.5em)
    align(center)[
      #if it.numbering != none [
        #text(size: 15pt, weight: "bold", fill: color-primary)[CHƯƠNG #counter(heading).display()]
        #linebreak()
      ]
      #text(size: 17pt, weight: "bold")[#upper(it.body)]
    ]
    v(-0.3em)
    line(length: 100%, stroke: 1.2pt + color-primary)
    v(0cm)
  }

  // 6) Heading cấp 2, cấp 3
  show heading.where(level: 2): it => {
    v(0.6em)
    text(size: 14pt, weight: "bold", fill: color-primary)[#it]
    v(0.2em)
  }
  show heading.where(level: 3): it => text(size: 13pt, weight: "bold", style: "italic")[#it]

  // 7) Caption cho bảng/hình: đậm, màu primary, dạng "Bảng 1: ..."
  show figure.caption: it => text(size: 10.5pt, fill: color-primary)[
    #text(weight: "bold")[#it.supplement #context it.counter.display():] #it.body
  ]

show math.equation.where(block: false): set text(size: 15pt)
  show math.equation.where(block: true): set text(size: 15pt) 
  
  // 8) Khối tiêu đề bài viết (chỉ hiện nếu title != "" — để trống nếu bạn tự
  //    làm trang bìa riêng bằng #page(numbering: none)[...] trong main.typ)
  // 
  if title != "" {
  // --- PHẦN TRANG TRÍ THÊM VÀO ---
  // Dải màu xanh trên cùng
  rect(width: 100%, height: 3cm, fill: rgb("#0F4C81"))
  
  place(top + center, dy: 1cm, block(
    align(center),
    text(fill: rgb("#0F4C81"), size: 14pt, weight: "bold")[TRƯỜNG ĐẠI HỌC SƯ PHẠM HÀ NỘI],
    v(0.2cm),
    text(fill: rgb("#0F4C81"), size: 11pt, style: "italic")[KHOA TOÁN HỌC]
  ))
  
  v(4cm) // Khoảng cách đẩy xuống
  
  align(center)[
    // ĐÃ SỬA: Đưa rgb và dấu ngoặc lên cùng một dòng
    #text(size: 22pt, weight: "bold", fill: rgb("#0F4C81"))[#title]
    #v(0.8em)
    
    // ĐÃ SỬA: Đưa rgb và dấu ngoặc lên cùng một dòng
    #line(length: 60%, stroke: 2pt + rgb("#F2C94C")) // đường kẻ vàng
    #v(0.8em)
    
    #if authors.len() > 0 [
      // ĐÃ SỬA: Đưa rgb và dấu ngoặc lên cùng một dòng
      #text(size: 14pt, style: "italic", fill: rgb("#4A4A4A"))[
        Người thực hiện: #authors.join(", ")
      ]
      #v(0.4em)
    ]
    #if date != none [
      #text(size: 12pt, fill: rgb("#4A4A4A"))[#date]
    ]
  ]
  
  // Hình trang trí góc dưới bên phải
  place(bottom + right, dx: -1.5cm, dy: 1.5cm, path(
    (0pt, 2.5cm), (2cm, 0pt), (4cm, 2.5cm),
    stroke: 3pt + rgb("#F2C94C"), fill: none
  ))
  
  v(1.5em)
}

  body
}
