// ==========================================================
// ỨNG DỤNG ĐỒNG DƯ THỨC TRONG BỒI DƯỠNG HỌC SINH GIỎI TOÁN THCS
// Typst source — compile with: typst compile detai.typ
// ==========================================================

#set document(
  title: "Ứng dụng đồng dư thức trong bồi dưỡng học sinh giỏi Toán THCS",
  author: "Người thực hiện",
)

#set text(lang: "vi", font: "Times New Roman", size: 13pt)
#set par(justify: true, leading: 0.85em, first-line-indent: 1.25em)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 3cm, right: 2cm),
  numbering: "1",
  header: context {
    if counter(page).get().first() > 1 [
      #align(center)[#text(size: 10pt, style: "italic")[
        Ứng dụng đồng dư thức trong bồi dưỡng học sinh giỏi Toán THCS
      ]]
    ]
  },
)

#set heading(numbering: none)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(0.5em)
  align(center)[#text(size: 16pt, weight: "bold")[#upper(it.body)]]
  v(0.4em)
}
#show heading.where(level: 2): it => {
  v(0.5em)
  text(size: 13.5pt, weight: "bold", fill: rgb("#1F4E79"))[#it.body]
  v(0.1em)
}
#show heading.where(level: 3): it => {
  v(0.5em)
  text(size: 13pt, weight: "bold", style: "italic", fill: rgb("#1F4E79"))[#it.body]
  v(0.25em)
}

// Helper for reference list entries (hanging indent)
#let refitem(body) = {
  pad(left: 1em)[#par(hanging-indent: 1em)[#body]]
  v(0.4em)
}

 #import "style.typ": def, example, note, tch
// Helper for inline numbered citations, e.g. cite_num("2, 3, 4") -> [2, 3, 4]
#let cite_num(s) = "[" + s + "]"

// ==========================================================
// TRANG BÌA
// ==========================================================
#align(center)[
  #v(1.5cm)
  #text(size: 14pt, weight: "bold")[TRƯỜNG ĐẠI HỌC SƯ PHẠM, ĐẠI HỌC HUẾ] \
  #text(size: 14pt, weight: "bold")[KHOA TOÁN HỌC]
  #v(2cm)
 
  #v(2cm)

  #text(size: 20pt, weight: "bold")[ỨNG DỤNG ĐỒNG DƯ THỨC\ TRONG BỒI DƯỠNG
  HỌC SINH GIỎI MÔN TOÁN TRUNG HỌC CƠ SỞ\
  (ÁP DỤNG CHO HỌC SINH LỚP 8, LỚP 9)]
  #v(1.2cm)
  #text(style: "italic")[Lĩnh vực: Số học -- Chương trình Toán Trung học cơ sở]
  #v(2.5cm)
  Họ và tên người thực hiện: ĐẶNG THANH QUÝ 
  #v(2.5cm)
  #text(weight: "bold")[Năm học 2026 -- 2027]
]

#pagebreak()

// ==========================================================
// MỤC LỤC
// ==========================================================
#align(center)[#text(size: 16pt, weight: "bold")[MỤC LỤC]]
#v(1em)
#outline(title: none, indent: auto, depth: 3)

// ==========================================================
// MỞ ĐẦU
// ==========================================================
= MỞ ĐẦU

== 1. Lý do chọn đề tài

Trong Chương trình giáo dục phổ thông môn Toán 2018, Số học là một trong những mạch nội dung cốt lõi xuyên suốt cấp Trung học cơ sở (THCS), bên cạnh Đại số, Hình học và Đo lường, Thống kê và Xác suất. Mảng Số học không chỉ trang bị cho học sinh những kiến thức nền tảng về số tự nhiên, số nguyên, quan hệ chia hết, ước chung, bội chung, số nguyên tố và hợp số, mà còn là môi trường lí tưởng để rèn luyện tư duy suy luận lô-gic, tư duy thuật toán và năng lực giải quyết vấn đề -- những năng lực cốt lõi mà chương trình hướng tới.

Trong thực tiễn bồi dưỡng học sinh giỏi (HSG) Toán ở lớp 8, lớp 9, các bài toán số học (đặc biệt là các bài toán về tính chia hết, số dư, chữ số tận cùng, phương trình nghiệm nguyên, số chính phương, số nguyên tố) luôn chiếm một tỉ trọng đáng kể trong cấu trúc đề thi HSG cấp huyện, cấp tỉnh và đề thi tuyển sinh vào lớp 10 chuyên Toán. Trong số các công cụ giải toán số học, đồng dư thức (phép đồng dư -- congruence, do Carl Friedrich Gauss đề xuất trong công trình Disquisitiones Arithmeticae năm 1801) là một công cụ có sức mạnh đặc biệt: nó cho phép quy nhiều bài toán về chia hết, số dư, chữ số tận cùng và phương trình nghiệm nguyên về cùng một ngôn ngữ hình thức, ngắn gọn, thống nhất và có tính hệ thống cao, thay vì phải xử lí bằng nhiều thủ thuật rời rạc như trong cách trình bày truyền thống ở bậc THCS.

Tuy nhiên, đồng dư thức không phải là nội dung được trình bày chính thức trong sách giáo khoa Toán 8, Toán 9 hiện hành theo Chương trình GDPT 2018, mà thường chỉ được một số giáo viên bồi dưỡng HSG giới thiệu tự phát, rời rạc, thiếu tính hệ thống. Điều này dẫn tới ba hạn chế cơ bản: (i) học sinh tiếp cận công cụ đồng dư một cách máy móc, ghi nhớ "mẹo" mà chưa hiểu bản chất toán học; (ii) giáo viên trẻ, giáo viên mới tham gia công tác bồi dưỡng gặp khó khăn khi tự xây dựng hệ thống lí thuyết và bài tập bài bản, vừa sức; (iii) chưa có nhiều tài liệu tiếng Việt trình bày đồng dư thức theo hướng sư phạm dành riêng cho đối tượng học sinh khá, giỏi lớp 8, 9.

Xuất phát từ những lí do trên, chúng tôi lựa chọn đề tài "Ứng dụng đồng dư thức trong bồi dưỡng học sinh giỏi môn Toán Trung học cơ sở (lớp 8, lớp 9)" nhằm hệ thống hoá cơ sở lí thuyết, xây dựng hệ thống bài tập phân dạng và đề xuất quy trình dạy học, góp phần nâng cao chất lượng, hiệu quả công tác bồi dưỡng HSG Toán tại các nhà trường.

#pagebreak()
== 2. Mục đích nghiên cứu

- Hệ thống hoá cơ sở lí luận về đồng dư thức ở mức độ phù hợp với trình độ nhận thức của học sinh khá, giỏi lớp 8, 9; 
- Xây dựng hệ thống bài tập được phân dạng theo các mức độ nhận biết -- thông hiểu -- vận dụng -- vận dụng cao; 
- Đề xuất quy trình, kế hoạch dạy học chuyên đề đồng dư thức nhằm phục vụ trực tiếp cho công tác bồi dưỡng HSG Toán THCS và có thể sử dụng làm tài liệu tham khảo cho đồng nghiệp.

== 3. Đối tượng và phạm vi nghiên cứu

- *Đối tượng nghiên cứu*: quá trình dạy học, bồi dưỡng học sinh giỏi phần Số học, trọng tâm là chủ đề đồng dư thức, dành cho học sinh lớp 8, lớp 9 cấp THCS.
- *Phạm vi nghiên cứu*: đề tài giới hạn trong mảng Số học của chương trình Toán THCS theo Chương trình GDPT 2018, tập trung khai thác chuyên sâu chủ đề đồng dư thức và ứng dụng của nó trong các dạng toán: tìm số dư, tìm chữ số tận cùng, chứng minh chia hết, giải phương trình nghiệm nguyên, chứng minh một số không phải là số chính phương, các bài toán về số nguyên tố -- là những dạng toán phổ biến trong đề thi HSG lớp 8, 9.

== 4. Nhiệm vụ nghiên cứu

- Nghiên cứu cơ sở lí luận về vị trí, vai trò của Số học và đồng dư thức trong chương trình Toán phổ thông ở Việt Nam và một số nước trên thế giới.
- Khảo sát, phân tích thực trạng dạy học, bồi dưỡng HSG phần Số học -- đồng dư thức tại một số trường THCS.
- Xây dựng hệ thống lí thuyết, phân loại các dạng bài tập và tuyển chọn hệ thống ví dụ, bài tập minh hoạ.
- Đề xuất quy trình, kế hoạch dạy học chuyên đề; đề xuất phương án thực nghiệm sư phạm và hệ thống bài tập tự luyện.

== 5. Phương pháp nghiên cứu

- Phương pháp nghiên cứu lí luận: phân tích, tổng hợp, hệ thống hoá các tài liệu, giáo trình, sách chuyên khảo về số học sơ cấp trong nước và quốc tế.
- Phương pháp nghiên cứu thực tiễn: quan sát, khảo sát, trao đổi kinh nghiệm với giáo viên trực tiếp bồi dưỡng HSG Toán.
- Phương pháp thực nghiệm sư phạm: tổ chức dạy thử nghiệm chuyên đề trên một nhóm học sinh, đối chiếu kết quả trước và sau tác động (thiết kế đề xuất, trình bày ở Chương 3).
- Phương pháp thống kê toán học: xử lí, phân tích số liệu khảo sát và thực nghiệm.

== 6. Giả thuyết khoa học

Nếu xây dựng được hệ thống lí thuyết đồng dư thức phù hợp với trình độ học sinh lớp 8, lớp 9, kết hợp với hệ thống bài tập phân dạng hợp lí và quy trình dạy học khoa học thì sẽ góp phần nâng cao hiệu quả bồi dưỡng HSG Toán, phát triển tư duy suy luận và năng lực giải quyết vấn đề cho học sinh.

== 7. Đóng góp của đề tài

- Về lí luận: góp phần hệ thống hoá một mảng kiến thức số học nâng cao (đồng dư thức) theo hướng sư phạm, trình bày chặt chẽ nhưng vừa sức với học sinh THCS.
- Về thực tiễn: cung cấp một tài liệu tham khảo cho giáo viên Toán THCS trong công tác bồi dưỡng HSG; đề xuất hệ thống bài tập, kế hoạch dạy học có thể sử dụng trực tiếp trong giảng dạy và tự học của học sinh.

== 8. Cấu trúc đề tài

Ngoài phần Mở đầu, Kết luận -- kiến nghị, Tài liệu tham khảo và Phụ lục, nội dung chính của đề tài được trình bày trong ba chương:

- Chương 1. Cơ sở lí luận và thực tiễn của việc dạy học đồng dư thức trong bồi dưỡng học sinh giỏi Toán THCS.
- Chương 2. Đồng dư thức và hệ thống bài tập ứng dụng trong bồi dưỡng học sinh giỏi Toán 8, 9.
- Chương 3. Đề xuất quy trình dạy học, thực nghiệm sư phạm và hệ thống bài tập tự luyện.

// ==========================================================
// CHƯƠNG 1
// ==========================================================
= CHƯƠNG 1. CƠ SỞ LÍ LUẬN VÀ THỰC TIỄN CỦA VIỆC DẠY HỌC ĐỒNG DƯ THỨC TRONG BỒI DƯỠNG HỌC SINH GIỎI TOÁN THCS

== 1.1. Tổng quan các công trình nghiên cứu có liên quan

Ở Việt Nam, mảng Số học THCS và các chuyên đề bồi dưỡng HSG đã được nhiều tác giả biên soạn công phu, tiêu biểu là bộ sách "Nâng cao và phát triển Toán" (các lớp 6, 7, 8, 9) và "9 chuyên đề Toán THCS" của tác giả Vũ Hữu Bình #cite_num("2,3,4"), trong đó chuyên đề Số học đã đề cập khá đầy đủ các dạng toán về chia hết, số nguyên tố, số chính phương nhưng chủ yếu trình bày theo hướng liệt kê thủ thuật, chưa hệ thống hoá thành công cụ đồng dư thức một cách tường minh. Tác giả Phan Huy Khải #cite_num("5") và nhóm tác giả Nguyễn Vũ Lương, Phạm Văn Hùng, Nguyễn Ngọc Thắng #cite_num("6") đã trình bày số học ở mức độ sâu hơn, có đề cập đến đồng dư nhưng chủ yếu hướng tới đối tượng học sinh chuyên Toán cấp THPT. Bên cạnh đó, một số sáng kiến kinh nghiệm, đề tài nghiên cứu ở cấp trường, cấp huyện (ví dụ nghiên cứu về phương pháp bồi dưỡng kiến thức chia hết trong tập hợp số tự nhiên) đã bước đầu đề cập tới việc dạy học chuyên đề chia hết cho học sinh khá, giỏi nhưng phạm vi còn hẹp, chưa khai thác đầy đủ công cụ đồng dư thức cho học sinh lớp 8, 9. Nghiên cứu tổng quan của Vũ Thị Liên (2024) #cite_num("8") cũng chỉ ra rằng công tác bồi dưỡng và quản lí bồi dưỡng HSG Toán cấp THCS ở Việt Nam vẫn còn thiếu những tài liệu chuyên sâu, hệ thống theo từng mạch kiến thức cụ thể.

Trên thế giới, đồng dư thức là một nội dung kinh điển của lí thuyết số sơ cấp, được trình bày một cách chặt chẽ trong các giáo trình đại học như "Elementary Number Theory" của David M. Burton #cite_num("9") và "An Introduction to the Theory of Numbers" của Niven, Zuckerman và Montgomery #cite_num("10"). Đối với đối tượng học sinh phổ thông và học sinh tham dự các kì thi Olympic Toán, các tác giả Titu Andreescu, Dorin Andrica, Zuming Feng trong "104 Number Theory Problems" #cite_num("11") và Mathew Crawford trong giáo trình "Introduction to Number Theory" của Art of Problem Solving (AoPS) #cite_num("12") đã trình bày đồng dư thức theo hướng ứng dụng giải toán, với hệ thống ví dụ và bài tập phong phú, được nhiều quốc gia sử dụng trong công tác bồi dưỡng học sinh năng khiếu Toán bậc trung học cơ sở. Các tài liệu định hướng chương trình như Chuẩn chương trình và nguyên tắc dạy Toán của Hội đồng Giáo viên Toán học Hoa Kỳ (NCTM) #cite_num("13") và Bộ chuẩn chương trình cốt lõi chung (Common Core State Standards for Mathematics) #cite_num("14") cũng nhấn mạnh vai trò của lí thuyết số và tư duy chia hết như một mạch kiến thức quan trọng để phát triển năng lực suy luận cho học sinh.

Như vậy, có thể thấy đồng dư thức đã được khai thác khá đầy đủ trong các tài liệu quốc tế dành cho bồi dưỡng học sinh năng khiếu, song ở Việt Nam, việc hệ thống hoá đồng dư thức thành một chuyên đề độc lập, có lí thuyết chặt chẽ, phân dạng bài tập rõ ràng và quy trình dạy học cụ thể, dành riêng cho đối tượng học sinh lớp 8, 9 vẫn còn là một khoảng trống cần được nghiên cứu, bổ sung. Đây chính là cơ sở thực tiễn quan trọng để chúng tôi triển khai đề tài này.

== 1.2. Vị trí, vai trò của mạch Số học trong chương trình môn Toán THCS

Theo Chương trình giáo dục phổ thông môn Toán 2018 #cite_num("1"), nội dung Số học được bố trí xuyên suốt từ lớp 6 đến lớp 9, đi từ các khái niệm số tự nhiên, số nguyên, phân số (lớp 6, 7) đến các nội dung sâu hơn ở lớp 8, 9 như căn bậc hai, số vô tỉ, cùng với việc củng cố, mở rộng các kiến thức về ước, bội, số nguyên tố, hợp số thông qua các chuyên đề tự chọn, chuyên đề bồi dưỡng. Số học được xem là mạch kiến thức có tính "mở", cho phép giáo viên khai thác nhiều bài toán có độ khó tăng dần, phù hợp để phân hoá đối tượng học sinh, đặc biệt là bồi dưỡng học sinh khá, giỏi.

Trong cấu trúc đề thi HSG Toán cấp THCS (cấp trường, cấp huyện, cấp tỉnh) cũng như đề thi tuyển sinh vào lớp 10 chuyên Toán ở nhiều địa phương, bài toán số học thường xuất hiện dưới dạng một câu hỏi độc lập, có tính phân loại cao, đòi hỏi học sinh phải huy động tổng hợp kiến thức về chia hết, đồng dư, số nguyên tố. Do đó, việc trang bị cho học sinh công cụ đồng dư thức một cách bài bản có ý nghĩa thiết thực, trực tiếp phục vụ cho mục tiêu bồi dưỡng HSG.

== 1.3. Đặc điểm nhận thức của học sinh khá, giỏi lớp 8, 9 đối với bài toán số học

Học sinh lớp 8, 9 đã được trang bị tương đối đầy đủ các kiến thức nền về số nguyên, phép chia có dư, ước chung lớn nhất, bội chung nhỏ nhất, số nguyên tố, hợp số, luỹ thừa với số mũ tự nhiên. Đây là nhóm học sinh đã bắt đầu hình thành tư duy trừu tượng ở mức độ nhất định (theo lí thuyết phát triển nhận thức của J. Piaget, đây là giai đoạn thao tác hình thức), có khả năng tiếp nhận các khái niệm mang tính hình thức hoá như quan hệ đồng dư nếu được dẫn dắt từ những ví dụ số học cụ thể, gần gũi (như bài toán tìm chữ số tận cùng, tìm số dư trong phép chia) trước khi khái quát hoá thành định nghĩa và tính chất tổng quát.

Tuy nhiên, thực tế cho thấy nhiều học sinh, kể cả học sinh khá giỏi, thường gặp khó khăn khi: (i) chuyển đổi một bài toán chia hết, số dư về ngôn ngữ đồng dư một cách chủ động; (ii) vận dụng linh hoạt các tính chất của đồng dư thức (cộng, trừ, nhân, nâng luỹ thừa hai vế) trong lập luận nhiều bước; (iii) lựa chọn mô-đun (số chia) phù hợp để giải quyết từng dạng bài toán cụ thể (ví dụ chọn mô-đun 3, 4, 8, 9 khi xét tính chính phương, chọn mô-đun bằng số mũ chu kì khi tìm chữ số tận cùng).

== 1.4. Thực trạng dạy học, bồi dưỡng phần Số học -- đồng dư thức ở trường THCS hiện nay

Qua trao đổi chuyên môn với giáo viên trực tiếp bồi dưỡng HSG Toán ở một số trường THCS, có thể rút ra một số nhận định về thực trạng như sau:

- Đa số giáo viên có giới thiệu cho học sinh một số kĩ thuật liên quan đến đồng dư (ví dụ: xét số dư khi chia cho 3, 4, 9; xét chu kì chữ số tận cùng) nhưng thường trình bày dưới dạng "mẹo tính nhanh", chưa gắn với định nghĩa và tính chất của đồng dư thức một cách tường minh, hệ thống.
- Thời lượng dành cho chuyên đề Số học trong kế hoạch bồi dưỡng HSG thường bị hạn chế so với các mạch kiến thức khác (Đại số, Hình học), trong khi đây lại là mảng có độ phân hoá cao trong các đề thi.
- Tài liệu tham khảo bằng tiếng Việt trình bày đồng dư thức một cách bài bản, có hệ thống bài tập phân dạng rõ ràng, vừa sức với học sinh lớp 8, 9 còn tương đối ít, chủ yếu học sinh phải tự tìm hiểu qua các tài liệu dành cho bậc học cao hơn hoặc tài liệu nước ngoài.
- Nhiều học sinh khi gặp lại các dạng toán quen thuộc (tìm chữ số tận cùng, chứng minh chia hết) nhưng với số liệu, hình thức phát biểu mới vẫn lúng túng do chưa nắm chắc bản chất công cụ đồng dư mà chỉ ghi nhớ máy móc từng bài mẫu.

== 1.5. So sánh vị trí mạch Số học trong chương trình Toán một số nước

Để có thêm căn cứ xác định mức độ và phạm vi khai thác đồng dư thức phù hợp với học sinh THCS Việt Nam, đề tài tiến hành đối chiếu sơ bộ cách bố trí nội dung số học -- lí thuyết chia hết trong chương trình Toán phổ thông của Việt Nam với chương trình của Hoa Kỳ (theo Common Core State Standards #cite_num("14") và định hướng của NCTM #cite_num("13")) và hệ thống bồi dưỡng học sinh năng khiếu theo tài liệu AoPS #cite_num("12"), như bảng 1.1 dưới đây.

#figure(
  table(
    columns: (0.8fr, 1.3fr, 1.5fr),
    align: (left, left, left),
    stroke: 0.5pt + gray,
    fill: (x, y) => if y == 0 { rgb("#D9E2F3") } else { white },
    [*Chương trình*], [*Vị trí mạch Số học -- chia hết*], [*Mức độ đề cập đồng dư thức*],
    [Việt Nam (GDPT 2018)], [Xuyên suốt lớp 6--9; trọng tâm chia hết ở lớp 6], [Chưa đưa vào chương trình chính khoá, chỉ có ở tài liệu bồi dưỡng HSG tự phát],
    [Hoa Kỳ (Common Core, NCTM)], [Number and Operations, tập trung lớp 6--8 (chia hết, ước, bội)], [Không đưa chính khoá; được khai thác trong các câu lạc bộ Toán, kì thi AMC 8],
    [Tài liệu bồi dưỡng năng khiếu quốc tế (AoPS)], [Giáo trình Number Theory riêng, dành cho học sinh 11--15 tuổi], [Trình bày hệ thống, đầy đủ định nghĩa, tính chất, ứng dụng đồng dư thức],
  ),
  caption: [So sánh vị trí mạch Số học trong chương trình Toán một số nước],
)

Kết quả đối chiếu cho thấy: ở cả Việt Nam và Hoa Kỳ, đồng dư thức đều không phải là nội dung bắt buộc trong chương trình đại trà, mà chủ yếu được khai thác trong các chương trình bồi dưỡng học sinh năng khiếu. Điều này càng khẳng định tính hợp lí của việc xây dựng đồng dư thức thành một chuyên đề tự chọn, chuyên sâu dành cho đối tượng học sinh khá, giỏi lớp 8, 9, thay vì đưa vào giảng dạy đại trà.

== 1.6. Sự cần thiết phải xây dựng hệ thống lí thuyết và bài tập về đồng dư thức

Từ những phân tích trên, có thể khẳng định việc xây dựng một hệ thống lí thuyết đồng dư thức chặt chẽ nhưng vừa sức, kết hợp với hệ thống bài tập được phân dạng khoa học và quy trình dạy học cụ thể là hết sức cần thiết, vừa đáp ứng yêu cầu đổi mới phương pháp dạy học theo định hướng phát triển năng lực, vừa là công cụ hữu ích, thiết thực phục vụ trực tiếp cho công tác bồi dưỡng HSG Toán lớp 8, 9 tại các nhà trường. Đây chính là nội dung trọng tâm được trình bày trong Chương 2 của đề tài.

// ==========================================================
// CHƯƠNG 2
// ==========================================================
= CHƯƠNG 2. ĐỒNG DƯ THỨC VÀ HỆ THỐNG BÀI TẬP 

== 2.1. Các kiến thức chuẩn bị

=== 2.1.1. Phép chia có dư

#def[
Với hai số nguyên $a$ và $b$, $b eq.not 0$, luôn tồn tại duy nhất hai số nguyên $q$ và $r$ sao cho $a = b q + r$, với $0 <= r < |b|$. Số $r$ được gọi là số dư của phép chia $a$ cho $b$. Khi $r = 0$ ta nói $a$ chia hết cho $b$, kí hiệu $b | a$.]


=== 2.1.2. Một số tính chất chia hết cơ bản đã học

- Nếu $a$ chia hết cho $m$ và $b$ chia hết cho $m$ thì $(a+b)$ và $(a-b)$ đều chia hết cho $m$.
- Nếu $a$ chia hết cho $m$ thì $a dot k$ chia hết cho $m$ với mọi số nguyên $k$.
- Nếu $a$ chia hết cho $b$ và $b$ chia hết cho $c$ thì $a$ chia hết cho $c$ (tính chất bắc cầu).

== 2.2. Khái niệm đồng dư thức
#def[
Cho $m$ là một số nguyên dương. Hai số nguyên $a$ và $b$ được gọi là đồng dư với nhau theo mô-đun $m$ nếu $a$ và $b$ có cùng số dư khi chia cho $m$, hay tương đương, nếu hiệu $(a - b)$ chia hết cho $m$. Khi đó ta viết $a equiv b space (mod m)$, đọc là "$a$ đồng dư với $b$ theo mô-đun $m$".]

Chẳng hạn: 
- $17 equiv 2 space (mod 5)$ vì $17$ và $2$ cùng có số dư là $2$ khi chia cho $5$ (tương đương $17 - 2 = 15$ chia hết cho $5$);
- $23 equiv -1 space (mod 4)$ hay $23 equiv 3 space (mod 4)$ vì $23 - 3 = 20$ chia hết cho $4$.

Có thể xem đồng dư thức như một cách "gói gọn" quan hệ chia hết đã học ở lớp 6 thành một ngôn ngữ hình thức, thuận tiện cho việc lập luận nhiều bước mà không phải liên tục quay lại định nghĩa chia hết.

== 2.3. Các tính chất cơ bản của đồng dư thức

Với $m$ là số nguyên dương cho trước, quan hệ đồng dư theo mô-đun $m$ có các tính chất sau:
#pagebreak()

#tch[
+ Tính phản xạ: $a equiv a space (mod m)$ với mọi số nguyên $a$.
+ Tính đối xứng: nếu $a equiv b space (mod m)$ thì $b equiv a space (mod m)$.
+ Tính bắc cầu: nếu $a equiv b space (mod m)$ và $b equiv c space (mod m)$ thì $a equiv c space (mod m)$.
+ Cộng, trừ hai vế: nếu $a equiv b space (mod m)$ và $c equiv d space (mod m)$ thì $a + c equiv b + d space (mod m)$ và $a - c equiv b - d space (mod m)$.
+ Nhân hai vế: nếu $a equiv b space (mod m)$ và $c equiv d space (mod m)$ thì $a c equiv b d space (mod m)$.
+ Nâng luỹ thừa: nếu $a equiv b space (mod m)$ thì $a^n equiv b^n space (mod m)$ với mọi số tự nhiên $n$ (suy ra trực tiếp từ tính chất nhân hai vế).
+ Nhân hai vế với cùng một số: nếu $a equiv b space (mod m)$ thì $k a equiv k b space (mod m)$ với mọi số nguyên $k$.]

Ba tính chất phản xạ, đối xứng, bắc cầu cho thấy quan hệ đồng dư là một quan hệ tương đương trên tập số nguyên; điều này giúp học sinh hiểu vì sao có thể "thay thế" một số bởi số dư của nó trong mọi phép toán cộng, trừ, nhân, luỹ thừa mà không làm thay đổi số dư cuối cùng -- đây chính là chìa khoá để giải quyết phần lớn các bài toán tìm số dư, tìm chữ số tận cùng ở phổ thông.

== 2.4. Một số kết quả nâng cao khác
=== 2.4.1. Hoạt động hình thành kiến thức: Khám phá tính tuần hoàn của số dư luỹ thừa

*a) Mục tiêu.* Học sinh tự tính toán, quan sát bảng số liệu để phát hiện được quy luật lặp lại (tuần hoàn) của số dư khi chia các luỹ thừa liên tiếp của một số cho một số nguyên tố cho trước; từ đó hình thành cơ sở trực quan, có ý nghĩa để tiếp nhận Định lí Fermat nhỏ ở mục 2.4.2 một cách tự nhiên, không áp đặt.

*b) Chuẩn bị.* Giáo viên chuẩn bị phiếu học tập kẻ sẵn bảng gồm hai dòng (giá trị $2^n$ và số dư khi chia cho $7$), chia lớp thành các nhóm 4 học sinh.

*c) Tổ chức thực hiện.*

- *Chuyển giao nhiệm vụ:* giáo viên phát phiếu học tập, yêu cầu mỗi nhóm tính giá trị $2^n$ với $n = 1, 2, dots, 9$, sau đó tìm số dư của mỗi giá trị khi chia cho $7$ và điền vào bảng; đặt câu hỏi định hướng: "Em có nhận xét gì về dãy số dư thu được? Số dư có lặp lại theo quy luật nào không?"
- *Thực hiện nhiệm vụ:* học sinh trong nhóm tính toán, điền bảng (bảng 2.1), thảo luận để tìm ra vị trí bắt đầu lặp lại và độ dài chu kì.
- *Báo cáo, thảo luận:* đại diện một vài nhóm trình bày bảng kết quả; giáo viên cho các nhóm đối chiếu, thống nhất bảng số liệu đúng; giáo viên tiếp tục đặt câu hỏi gợi mở: "Chu kì lặp lại của số dư bằng bao nhiêu? Con số đó có liên hệ gì với số chia $7$ (một số nguyên tố)?"
- *Kết luận, nhận định:* giáo viên chốt lại: dãy số dư của $2^n$ theo mô-đun $7$ tuần hoàn với chu kì $6$, và $6 = 7 - 1$; đặc biệt $2^6 equiv 1 space (mod 7)$. Giáo viên nêu vấn đề: liệu tính chất "$a^(p-1) equiv 1 space (mod p)$ với $p$ nguyên tố" có đúng với mọi số $a$ không chia hết cho $p$ hay không, từ đó dẫn dắt học sinh sang nội dung Định lí Fermat nhỏ.

*d) Bảng số liệu (phiếu học tập gợi ý).*

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt + gray,
    fill: (x, y) => if x == 0 { rgb("#D9E2F3") } else { white },
    [*$n$*], [1], [2], [3], [4], [5], [6], [7], [8], [9],
    [*$2^n$*], [2], [4], [8], [16], [32], [64], [128], [256], [512],
    [*Số dư (mod 7)*], [2], [4], [1], [2], [4], [1], [2], [4], [1],
  ),
  caption: [Phiếu học tập: số dư của $2^n$ khi chia cho $7$],
)

Từ bảng trên, học sinh dễ dàng nhận ra chu kì lặp là $3$ (không phải $6$ như dự đoán ban đầu, vì $2$ là một trường hợp đặc biệt có chu kì là ước của $p - 1 = 6$) -- đây chính là một phát hiện thú vị nên được giáo viên khai thác: chu kì thực tế luôn là một ước của $p-1$, và Định lí Fermat nhỏ chỉ khẳng định $a^(p-1) equiv 1 space (mod p)$ chứ không khẳng định $p - 1$ là chu kì nhỏ nhất. Hoạt động này giúp học sinh vừa phát hiện được quy luật tuần hoàn, vừa hiểu đúng bản chất và giới hạn của định lí sẽ học ngay sau đây, tránh ngộ nhận.

=== 2.4.2. Định lí Fermat nhỏ (Fermat's Little Theorem)
#def[
    Nếu $p$ là một số nguyên tố và $a$ là số nguyên không chia hết cho $p$ thì $a^(p-1) equiv 1 space (mod p)$.]

 Kết quả này có thể minh hoạ qua ví dụ:
 #example[ với $p = 7$, $a = 3$, ta có $3^6 = 729 = 7 dot 104 + 1$, tức $3^6 equiv 1 space (mod 7)$]
  đúng như định lí phát biểu (khớp với dự đoán mà học sinh đã đặt ra ở cuối hoạt động 2.4.1). Đối với học sinh THCS, giáo viên có thể hướng dẫn kiểm chứng định lí trên một vài trường hợp cụ thể để học sinh tin tưởng và vận dụng khi cần rút gọn nhanh những luỹ thừa có số mũ lớn với mô-đun là số nguyên tố nhỏ, mà không đi sâu vào chứng minh tổng quát (thường dùng quy nạp kết hợp khai triển nhị thức Newton hoặc lí thuyết nhóm,..).

=== 2.4.3. Số dư của luỹ thừa và tính tuần hoàn
#def[
Với mô-đun $m$ cố định, dãy số dư của $a^1, a^2, a^3, ...$ khi chia cho $m$ luôn tuần hoàn kể từ một chỉ số nào đó (vì chỉ có hữu hạn số dư có thể xảy ra, từ $0$ đến $m-1$) ]
Đây chính là quy luật mà học sinh đã tự phát hiện ở hoạt động 2.4.1, nay được phát biểu tổng quát cho mọi cơ số $a$ và mọi mô-đun $m$. Đây là cơ sở lí thuyết cho các bài toán tìm chữ số tận cùng (ứng với $m=10$, $m=100$) và tìm số dư của luỹ thừa với số mũ lớn -- nội dung cốt lõi của Dạng 1, Dạng 2 trình bày ở mục 2.5.

== 2.5. Phân loại các dạng bài tập ứng dụng đồng dư thức

Trên cơ sở khảo sát các đề thi HSG Toán cấp THCS, đề thi tuyển sinh vào lớp 10 chuyên Toán trong nước và một số bài toán số học trong các kì thi dành cho học sinh THCS trên thế giới (ví dụ American Mathematics Competitions -- AMC 8), chúng tôi phân loại các bài toán ứng dụng đồng dư thức phù hợp với học sinh lớp 8, 9 thành 6 dạng cơ bản sau.

#align(center)[=== Dạng 1. Tìm số dư của một phép chia]

*Phương pháp giải* (áp dụng trực tiếp quy luật tuần hoàn đã phát hiện ở hoạt động 2.4.1):

- *Bước 1.* Xác định mô-đun $m$ (số chia) và biểu thức luỹ thừa $a^n$ cần tìm số dư khi chia cho $m$.
- *Bước 2.* Tính lần lượt số dư của $a^1, a^2, a^3, dots$ theo mô-đun $m$ cho đến khi số dư lặp lại giá trị đã gặp; xác định chu kì $k$ của dãy số dư.
- *Bước 3.* Thực hiện phép chia số mũ $n$ cho chu kì $k$, viết $n = k q + r$ với $0 <= r < k$.
- *Bước 4.* Kết luận: số dư cần tìm chính là số dư của $a^r$ theo mô-đun $m$ (nếu $r = 0$, lấy số dư của $a^k$).

#example[ Tìm số dư của phép chia $5^2023$ cho $7$.]

_Lời giải._

_Bước 1._ Mô-đun $m = 7$, cần tìm số dư của $5^2023$.

_Bước 2._ Ta xét các luỹ thừa liên tiếp của $5$ theo mô-đun $7$: $5^1 equiv 5$; $5^2 equiv 25 equiv 4$; $5^3 equiv 20 equiv 6$; $5^4 equiv 30 equiv 2$; $5^5 equiv 10 equiv 3$; $5^6 equiv 15 equiv 1 space (mod 7)$. Số dư lặp lại từ đây, vậy chu kì $k = 6$.

_Bước 3._ Ta có $2023 = 6 dot 337 + 1$, suy ra $q = 337$, $r = 1$.

_Bước 4._ Do đó $5^2023 = (5^6)^337 dot 5^1 equiv 1^337 dot 5 equiv 5 space (mod 7)$. Vậy số dư của $5^2023$ khi chia cho $7$ là $5$.

#align(center)[=== Dạng 2. Tìm chữ số tận cùng của một luỹ thừa]

*Phương pháp giải* (trường hợp riêng của Dạng 1 với mô-đun $10$ hoặc $100$):

- *Bước 1.* Xác định yêu cầu là tìm một chữ số tận cùng (chọn mô-đun $m = 10$) hay hai chữ số tận cùng (chọn mô-đun $m = 100$).
- *Bước 2.* Tính chu kì $k$ của dãy số dư $a^1, a^2, dots$ theo mô-đun $m$ đã chọn.
- *Bước 3.* Chia số mũ $n$ cho chu kì $k$: $n = k q + r$.
- *Bước 4.* Chữ số (hoặc hai chữ số) tận cùng cần tìm chính là số dư của $a^r$ theo mô-đun $m$.

#example[ Tìm chữ số tận cùng của $7^2023$.]

_Lời giải._

_Bước 1._ Đề bài yêu cầu một chữ số tận cùng, chọn mô-đun $m = 10$.

_Bước 2._ Xét các luỹ thừa của $7$ theo mô-đun $10$: $7^1 equiv 7$; $7^2 equiv 9$; $7^3 equiv 3$; $7^4 equiv 1 space (mod 10)$, sau đó lặp lại; chu kì $k = 4$.

_Bước 3._ Ta có $2023 = 4 dot 505 + 3$, suy ra $r = 3$.

_Bước 4._ Do đó $7^2023 equiv 7^3 equiv 3 space (mod 10)$. Vậy chữ số tận cùng của $7^2023$ là $3$.

#align(center)[ === Dạng 3. Chứng minh một biểu thức chia hết cho một số cho trước]

*Phương pháp giải:*

- *Bước 1.* Chuyển yêu cầu "chứng minh $A$ chia hết cho $m$" thành "chứng minh $A equiv 0 space (mod m)$".
- *Bước 2.* Lựa chọn một trong hai hướng: (a) phân tích $A$ thành tích các thừa số có tính chất chia hết đã biết; hoặc (b) xét toàn bộ các trường hợp số dư có thể có của biến theo mô-đun $m$ (khi $m$ đủ nhỏ).
- *Bước 3.* Nếu theo hướng (b): lần lượt thay từng giá trị dư $x equiv 0, 1, dots, m-1 space (mod m)$ vào biểu thức, tính số dư của $A$ theo mô-đun $m$ trong mỗi trường hợp.
- *Bước 4.* Kết luận $A equiv 0 space (mod m)$ trong mọi trường hợp có thể xảy ra, suy ra $A$ chia hết cho $m$.

#example[Chứng minh rằng với mọi số nguyên $n$, biểu thức $n^3 - n$ luôn chia hết cho $6$.]

_Lời giải._

_Bước 1._ Ta cần chứng minh $n^3 - n equiv 0 space (mod 6)$.

_Bước 2._ Ta chọn hướng (a): phân tích $n^3 - n = n(n-1)(n+1)$, đây là tích của ba số nguyên liên tiếp.

_Bước 3 (kiểm chứng bổ sung theo hướng b để đối chiếu)._ Xét $n$ theo mô-đun $6$: với $n equiv 0, 1, 2, 3, 4, 5 space (mod 6)$, tính trực tiếp $n^3 - n$ theo mô-đun $6$ trong cả $6$ trường hợp đều cho kết quả đồng dư $0$ -- điều này khớp với nhận xét từ phân tích thừa số: trong ba số nguyên liên tiếp $n-1, n, n+1$ luôn có ít nhất một số chia hết cho $2$ và đúng một số chia hết cho $3$.

_Bước 4._ Do đó $n(n-1)(n+1)$ chia hết cho cả $2$ và $3$, mà $2$ và $3$ nguyên tố cùng nhau nên chia hết cho $6$. Vậy $n^3 - n$ chia hết cho $6$ với mọi số nguyên $n$.

#align(center)[=== Dạng 4. Sử dụng đồng dư để giải (hoặc chứng minh vô nghiệm) phương trình nghiệm nguyên]

*Phương pháp giải:*

- *Bước 1.* Chọn mô-đun $m$ thích hợp, thường căn cứ vào tập số dư có thể có của các luỹ thừa xuất hiện trong phương trình (ví dụ $m = 4$ hoặc $m = 8$ khi có số chính phương).
- *Bước 2.* Xác định tập giá trị đồng dư có thể có của vế trái theo mô-đun $m$ (dựa trên tập số dư của từng số hạng).
- *Bước 3.* Tính giá trị đồng dư của vế phải theo mô-đun $m$.
- *Bước 4.* So sánh hai tập giá trị: nếu giá trị vế phải không thuộc tập giá trị có thể có của vế trái thì kết luận phương trình vô nghiệm nguyên; nếu thuộc, tiếp tục xét thêm điều kiện để tìm nghiệm cụ thể.

#example[ Chứng minh rằng phương trình $x^2 + y^2 = 2019$ không có nghiệm nguyên.]

_Lời giải._

_Bước 1._ Chọn mô-đun $m = 4$ (vì phương trình chứa các số chính phương).

_Bước 2._ Với mọi số nguyên $x$, ta có $x equiv 0, 1, 2, 3 space (mod 4)$, suy ra $x^2 equiv 0, 1, 0, 1 space (mod 4)$ tương ứng, tức số chính phương chỉ đồng dư với $0$ hoặc $1$ theo mô-đun $4$. Do đó $x^2 + y^2$ theo mô-đun $4$ chỉ có thể nhận một trong ba giá trị $0, 1, 2$.

_Bước 3._ Ta có $2019 = 4 dot 504 + 3$, tức $2019 equiv 3 space (mod 4)$.

_Bước 4._ Vì $3 in.not {0, 1, 2}$ nên phương trình $x^2 + y^2 = 2019$ không thể có nghiệm nguyên.



=== Dạng 5. Chứng minh một số không phải là số chính phương (hoặc lập phương)

*Phương pháp giải:*

- *Bước 1.* Chọn mô-đun $m$ phù hợp (thường là $3, 4, 8, 9$ với số chính phương; $7, 9$ với lập phương).
- *Bước 2.* Ghi nhớ (hoặc liệt kê lại) tập số dư có thể có của số chính phương (lập phương) theo mô-đun $m$ đã chọn (ví dụ số chính phương chia $4$ chỉ dư $0$ hoặc $1$; chia $8$ chỉ dư $0, 1$ hoặc $4$).
- *Bước 3.* Tính số dư của số đã cho theo mô-đun $m$ (thường dựa vào chữ số tận cùng hoặc cấu trúc đặc biệt của số).
- *Bước 4.* Đối chiếu: nếu số dư tính được ở Bước 3 không thuộc tập số dư ở Bước 2 thì kết luận số đã cho không phải là số chính phương (lập phương).

#example[Chứng minh rằng số $A$ gồm $2023$ chữ số $1$ liên tiếp ($A = 11...1$) không phải là số chính phương.]

_Lời giải._

_Bước 1._ Chọn mô-đun $m = 4$.

_Bước 2._ Số chính phương chia cho $4$ chỉ có thể dư $0$ hoặc $1$.

_Bước 3._ Xét hai chữ số tận cùng của $A$ là "$11$", suy ra $A equiv 11 equiv 3 space (mod 4)$.

_Bước 4._ Vì $3 in.not {0, 1}$ nên $A$ không thể là số chính phương.

#align(center)[ === Dạng 6. Bài toán về số nguyên tố liên quan đến đồng dư]

*Phương pháp giải:*

- *Bước 1.* Xét trước các trường hợp đặc biệt, nhỏ (thường là $p = 2$, $p = 3$) bằng cách thử trực tiếp.
- *Bước 2.* Với $p$ khác các giá trị đặc biệt đó, chọn một mô-đun $q$ thích hợp (thường là số nguyên tố nhỏ xuất hiện tự nhiên trong bài toán) để xét số dư của $p$ theo mô-đun $q$.
- *Bước 3.* Xét các số hạng liên quan (ví dụ $p, p+2, p+4$) theo mô-đun $q$, chỉ ra rằng trong các số hạng đó luôn tồn tại đúng một số chia hết cho $q$.
- *Bước 4.* Lập luận: nếu số hạng chia hết cho $q$ đó lớn hơn $q$ thì nó không thể là số nguyên tố, dẫn đến mâu thuẫn với giả thiết; từ đó kết luận nghiệm (kết hợp với trường hợp đặc biệt ở Bước 1).

#example[ Tìm tất cả các số nguyên tố $p$ sao cho $p+2$ và $p+4$ đều là số nguyên tố.]

_Lời giải._

_Bước 1._ Xét $p = 3$: khi đó $p+2 = 5$, $p+4 = 7$ đều là số nguyên tố, vậy $p = 3$ thoả mãn.

_Bước 2._ Xét $p eq.not 3$ ($p$ là số nguyên tố nên $p$ không chia hết cho $3$); chọn mô-đun $q = 3$.

_Bước 3._ Ba số $p, p+2, p+4$ có các số dư theo mô-đun $3$ lần lượt là $p, p+2, p+1 space (mod 3)$ (vì $4 equiv 1 space (mod 3)$), đây là ba số dư đôi một khác nhau nên nhận đủ ba giá trị $0, 1, 2$ theo một thứ tự nào đó; suy ra luôn tồn tại đúng một trong ba số $p, p+2, p+4$ chia hết cho $3$.

_Bước 4._ Vì $p > 3$ nên cả ba số đều lớn hơn $3$, do đó số chia hết cho $3$ trong ba số này không thể là số nguyên tố -- mâu thuẫn với giả thiết $p+2$ và $p+4$ đều là số nguyên tố. Vậy $p = 3$ là số nguyên tố duy nhất thoả mãn yêu cầu bài toán.

== 2.6. Bảng tổng hợp các dạng bài tập và mô-đun thường dùng

#figure(
  table(
    columns: (1.4fr, 1.1fr, 1.5fr),
    align: (left, left, left),
    stroke: 0.5pt + gray,
    fill: (x, y) => if y == 0 { rgb("#D9E2F3") } else { white },
    [*Dạng bài tập*], [*Mô-đun thường chọn*], [*Kĩ năng trọng tâm*],
    [1. Tìm số dư của phép chia], [Số chia đã cho trong đề bài], [Tìm chu kì lặp của số dư luỹ thừa],
    [2. Tìm chữ số tận cùng], [10 (một chữ số), 100 (hai chữ số)], [Tìm chu kì chữ số tận cùng],
    [3. Chứng minh chia hết], [Số cần chứng minh chia hết], [Xét hết các trường hợp số dư hoặc phân tích thành tích],
    [4. Phương trình nghiệm nguyên], [3, 4, 8, 9 (tuỳ hệ số)], [So sánh tập giá trị đồng dư hai vế],
    [5. Số chính phương / lập phương], [3, 4, 8, 9], [Ghi nhớ tập số dư có thể có của số chính phương, lập phương],
    [6. Bài toán số nguyên tố], [Số nguyên tố liên quan (2, 3...)], [Nguyên lí Đi-rich-lê (chia hết trong dãy liên tiếp)],
  ),
  caption: [Tổng hợp các dạng bài tập và mô-đun thường dùng],
)

== 2.7. Quy trình hướng dẫn học sinh tiếp cận bài toán bằng đồng dư thức

Để giúp học sinh chủ động vận dụng công cụ đồng dư thức khi đứng trước một bài toán số học mới (chưa từng gặp dạng), có thể hướng dẫn học sinh thực hiện theo quy trình bốn bước sau:

- Bước 1 -- Nhận diện: đọc kĩ đề bài, xác định bài toán thuộc dạng số dư, chữ số tận cùng, chia hết, phương trình nghiệm nguyên hay số chính phương/nguyên tố.
- Bước 2 -- Chọn mô-đun: căn cứ vào dạng bài (xem bảng 2.6) để lựa chọn mô-đun phù hợp; nếu bài toán cho sẵn số chia thì lấy chính số đó làm mô-đun.
- Bước 3 -- Chuyển đổi ngôn ngữ: viết lại giả thiết và kết luận của bài toán dưới dạng đồng dư thức, tận dụng các tính chất cộng, trừ, nhân, nâng luỹ thừa đã học ở mục 2.3.
- Bước 4 -- Lập luận và kết luận: tiến hành lập luận trên ngôn ngữ đồng dư (xét chu kì, xét hết các trường hợp số dư, hoặc chỉ ra mâu thuẫn), sau đó dịch kết luận trở lại ngôn ngữ số học ban đầu để trả lời đúng yêu cầu của đề bài.

Quy trình này được đề xuất áp dụng cụ thể trong kế hoạch dạy học chuyên đề trình bày ở Chương 3.

// ==========================================================
// CHƯƠNG 3
// ==========================================================
= CHƯƠNG 3. ĐỀ XUẤT QUY TRÌNH DẠY HỌC, THỰC NGHIỆM SƯ PHẠM VÀ HỆ THỐNG BÀI TẬP TỰ LUYỆN

== 3.1. Nguyên tắc xây dựng hệ thống bài tập bồi dưỡng

- Nguyên tắc vừa sức: bài tập được sắp xếp từ dễ đến khó, từ các ví dụ minh hoạ định nghĩa, tính chất đến các bài toán tổng hợp trong đề thi HSG.
- Nguyên tắc hệ thống: các dạng bài tập được sắp xếp theo mạch phát triển của công cụ đồng dư thức (từ tính chất cơ bản đến các dạng ứng dụng ở mục 2.5).
- Nguyên tắc phát triển năng lực: ưu tiên các bài toán đòi hỏi học sinh phải tự lựa chọn mô-đun, tự phát hiện quy luật, thay vì chỉ áp dụng công thức có sẵn.
- Nguyên tắc gắn với thực tiễn thi cử: lựa chọn, biên soạn lại các bài toán từ đề thi HSG cấp huyện, cấp tỉnh, đề thi chuyên và một số bài toán quốc tế (đã được điều chỉnh về mức độ, số liệu) để tăng tính thiết thực.

== 3.2. Đề xuất kế hoạch dạy học chuyên đề (dự kiến 8 tiết)

#figure(
  table(
    columns: (0.5fr, 2.6fr, 2.2fr),
    align: (center, left, left),
    stroke: 0.5pt + gray,
    fill: (x, y) => if y == 0 { rgb("#D9E2F3") } else { white },
    [*Tiết*], [*Nội dung*], [*Yêu cầu cần đạt*],
    [1], [Khái niệm đồng dư thức, các tính chất cơ bản (2.2, 2.3)], [Phát biểu được định nghĩa, chứng minh được các tính chất cơ bản],
    [2], [Dạng 1, Dạng 2: tìm số dư, tìm chữ số tận cùng], [Tìm được chu kì lặp, giải được bài toán mức cơ bản],
    [3], [Luyện tập Dạng 1, Dạng 2 (bài toán nâng cao)], [Vận dụng linh hoạt với số mũ lớn, mô-đun phức tạp hơn],
    [4], [Dạng 3: chứng minh chia hết], [Vận dụng xét hết trường hợp số dư, phối hợp phân tích thừa số],
    [5], [Dạng 4: phương trình nghiệm nguyên], [Lựa chọn được mô-đun phù hợp để loại nghiệm],
    [6], [Dạng 5: số chính phương, lập phương], [Ghi nhớ và vận dụng tập số dư của số chính phương],
    [7], [Dạng 6: bài toán số nguyên tố], [Vận dụng nguyên lí chia hết trong dãy số liên tiếp],
    [8], [Tổng hợp, luyện đề, kiểm tra đánh giá], [Giải được bài toán tổng hợp trong đề thi HSG],
  ),
  caption: [Kế hoạch dạy học chuyên đề đồng dư thức],
)

== 3.3. Tổ chức thực nghiệm sư phạm (phương án đề xuất)

Do khuôn khổ đề tài mang tính nghiên cứu, xây dựng tài liệu là chủ yếu, việc thực nghiệm sư phạm được đề xuất triển khai như sau và có thể được giáo viên vận dụng, bổ sung số liệu thực tế trong quá trình áp dụng tại đơn vị công tác:

- Đối tượng thực nghiệm: một nhóm học sinh khá, giỏi lớp 8 hoặc lớp 9 (từ 15--20 học sinh) đang tham gia đội tuyển HSG Toán của nhà trường.
- Nhóm đối chứng: một nhóm học sinh có trình độ tương đương, được bồi dưỡng theo phương pháp truyền thống (không sử dụng hệ thống lí thuyết, bài tập đồng dư thức đã xây dựng).
- Công cụ đánh giá: bài kiểm tra khảo sát đầu vào và đầu ra gồm các bài toán số học cùng mức độ, thời gian làm bài 45--60 phút; tiêu chí đánh giá theo thang điểm 10, phân theo 4 mức độ nhận biết, thông hiểu, vận dụng, vận dụng cao.
- Thời gian thực nghiệm: tương ứng với 8 tiết học chuyên đề đề xuất tại mục 3.2, có thể bố trí trong 4 tuần bồi dưỡng.
- Phương pháp xử lí số liệu: so sánh điểm trung bình, độ lệch chuẩn giữa nhóm thực nghiệm và nhóm đối chứng trước và sau tác động bằng các phương pháp thống kê mô tả cơ bản.

== 3.4. Dự kiến tiêu chí đánh giá kết quả thực nghiệm

Kết quả thực nghiệm (khi được triển khai trên thực tế) cần được phân tích trên hai phương diện: định lượng (điểm số bài kiểm tra, tỉ lệ học sinh đạt yêu cầu ở từng dạng bài trong 6 dạng đã phân loại ở mục 2.5) và định tính (mức độ chủ động, hứng thú của học sinh khi giải quyết bài toán số học mới, khả năng tự lựa chọn mô-đun theo quy trình 4 bước ở mục 2.7). Bảng dự kiến khung tiêu chí đánh giá được trình bày dưới đây, giáo viên có thể sử dụng trực tiếp để thu thập, đối chiếu số liệu khi áp dụng đề tài vào thực tế bồi dưỡng tại đơn vị.

#figure(
  table(
    columns: (1.1fr, 1.3fr, 1.4fr, 1.3fr),
    align: (left, left, left, left),
    stroke: 0.5pt + gray,
    fill: (x, y) => if y == 0 { rgb("#D9E2F3") } else { white },
    [*Tiêu chí*], [*Mức 1 (Yếu)*], [*Mức 2 (Trung bình)*], [*Mức 3 (Tốt)*],
    [Nhận diện dạng bài], [Chưa nhận diện được dạng bài], [Nhận diện đúng một số dạng quen thuộc], [Nhận diện nhanh, chính xác mọi dạng đã học],
    [Lựa chọn mô-đun], [Không xác định được mô-đun], [Chọn được mô-đun khi có gợi ý], [Tự chọn được mô-đun phù hợp],
    [Trình bày lập luận], [Lập luận rời rạc, thiếu căn cứ], [Lập luận đúng hướng, còn thiếu chặt chẽ], [Lập luận chặt chẽ, trình bày rõ ràng],
  ),
  caption: [Khung tiêu chí đánh giá kết quả thực nghiệm],
)

== 3.5. Hệ thống bài tập tự luyện đề xuất

Hệ thống bài tập dưới đây được biên soạn theo 6 dạng đã trình bày ở mục 2.5, sắp xếp theo bốn mức độ nhận biết (NB), thông hiểu (TH), vận dụng (VD) và vận dụng cao (VDC), dùng để luyện tập, củng cố sau khi học xong lí thuyết và phương pháp giải từng dạng; giáo viên có thể lựa chọn, gia giảm số lượng và mức độ khó tuỳ theo trình độ học sinh.

=== Nhóm bài tập Dạng 1 (tìm số dư của phép chia)

- Bài 1 (NB). Tìm số dư của phép chia $3^2024$ cho $5$.
- Bài 2 (TH). Tìm số dư của phép chia $2^100$ cho $9$.
- Bài 3 (VD). Tìm số dư của phép chia $7^333$ cho $11$.
- Bài 4 (VDC). Tìm số dư của phép chia $3^2024 + 5^2024$ cho $13$.

=== Nhóm bài tập Dạng 2 (tìm chữ số tận cùng)

- Bài 5 (NB). Tìm chữ số tận cùng của $9^2023$.
- Bài 6 (TH). Tìm chữ số tận cùng của tổng $2^2023 + 3^2023$.
- Bài 7 (VD). Tìm hai chữ số tận cùng của $6^2023$.
- Bài 8 (VDC). Tìm hai chữ số tận cùng của $2^2024 dot 3^2024$.

=== Nhóm bài tập Dạng 3 (chứng minh chia hết)

- Bài 9 (NB). Chứng minh rằng $n^3 - n$ chia hết cho $3$ với mọi số nguyên $n$ (không dùng lại kết quả đã chứng minh ở Ví dụ 2.3, chỉ xét riêng mô-đun $3$).
- Bài 10 (TH). Chứng minh rằng $n^5 - n$ chia hết cho $30$ với mọi số nguyên $n$.
- Bài 11 (VD). Chứng minh rằng với mọi số tự nhiên $n$, số $7^n + 3n - 1$ chia hết cho $9$ (gợi ý: xét mô-đun $9$, kết hợp quy nạp theo $n$).
- Bài 12 (VDC). Chứng minh rằng $11^n - 4^n$ chia hết cho $7$ với mọi số tự nhiên $n$.

=== Nhóm bài tập Dạng 4 (phương trình nghiệm nguyên)

- Bài 13 (NB). Chứng minh phương trình $x^2 + y^2 = 2023$ không có nghiệm nguyên (gợi ý: xét mô-đun $4$, tương tự Ví dụ 2.4).
- Bài 14 (TH). Chứng minh phương trình $x^2 - 3y^2 = 17$ không có nghiệm nguyên (gợi ý: xét mô-đun $3$).
- Bài 15 (VD). Tìm tất cả các số nguyên $x, y$ thoả mãn $x^2 + y^2 = 4z + 3$ với $z$ nguyên (chứng minh vô nghiệm nguyên với mọi $z$, gợi ý xét mô-đun $4$).
- Bài 16 (VDC). Chứng minh phương trình $x^3 + y^3 = 2022$ không có nghiệm nguyên (gợi ý: xét mô-đun $9$, sử dụng tập số dư có thể có của tổng hai lập phương).

=== Nhóm bài tập Dạng 5 (số chính phương, lập phương)

- Bài 17 (NB). Chứng minh rằng một số tự nhiên có chữ số tận cùng là $2, 3, 7$ hoặc $8$ thì không thể là số chính phương (gợi ý: xét mô-đun $10$, dựa vào tập số dư của số chính phương khi chia cho $10$).
- Bài 18 (TH). Chứng minh rằng tổng của ba số chính phương liên tiếp không thể là một số chính phương (gợi ý: xét mô-đun $3$; ba số nguyên liên tiếp luôn có đủ ba số dư $0, 1, 2$ khi chia cho $3$).
- Bài 19 (VD). Cho $A = 2023^2023 + 2024^2024$. Chứng minh $A$ không phải là số chính phương (gợi ý: xét mô-đun $4$).
- Bài 20 (VDC). Chứng minh rằng số $B = 4^n + 4^(n+1) + 4^(n+2)$ (với $n$ là số tự nhiên) không phải là số chính phương với mọi $n$ (gợi ý: rút gọn $B = 21 dot 4^n$ rồi lập luận qua phân tích thừa số nguyên tố).

=== Nhóm bài tập Dạng 6 (số nguyên tố)

- Bài 21 (NB). Tìm số nguyên tố $p$ sao cho $p + 4$ và $p + 8$ đều là số nguyên tố.
- Bài 22 (TH). Tìm số nguyên tố $p$ sao cho $2p + 1$ và $4p + 1$ đều là số nguyên tố.
- Bài 23 (VD). Cho $p$ là số nguyên tố lớn hơn $3$. Chứng minh rằng $p^2 - 1$ chia hết cho $24$.
- Bài 24 (VDC). Tìm tất cả các số nguyên tố $p$ sao cho $p^2 + 2$ cũng là số nguyên tố (gợi ý: xét mô-đun $3$ như Ví dụ 2.6, chú ý trường hợp đặc biệt $p = 3$).

Đáp số, hướng dẫn giải tóm tắt của toàn bộ 24 bài tập tự luyện trên được trình bày thống nhất theo mô hình bốn bước ở mục 2.5, tổng hợp tại Phụ lục 3 để giáo viên tiện sử dụng trong quá trình tổ chức luyện tập, kiểm tra đánh giá học sinh đội tuyển.

// ==========================================================
// KẾT LUẬN
// ==========================================================
= KẾT LUẬN VÀ KIẾN NGHỊ

== 1. Kết luận

Đề tài đã thực hiện được các nhiệm vụ nghiên cứu đặt ra: (i) hệ thống hoá cơ sở lí luận về vị trí của mạch Số học và vai trò của đồng dư thức trong bồi dưỡng học sinh giỏi Toán THCS trên cơ sở tham khảo các tài liệu trong nước và quốc tế; (ii) phân tích thực trạng dạy học, bồi dưỡng phần Số học -- đồng dư thức hiện nay; (iii) xây dựng hệ thống lí thuyết đồng dư thức (định nghĩa, tính chất, một số kết quả nâng cao) phù hợp với trình độ học sinh lớp 8, 9; (iv) phân loại và xây dựng hệ thống ví dụ, bài tập theo 6 dạng toán điển hình, kèm quy trình 4 bước hướng dẫn học sinh tiếp cận bài toán; (v) đề xuất kế hoạch dạy học chuyên đề 8 tiết, phương án tổ chức thực nghiệm sư phạm và hệ thống bài tập tự luyện.

Kết quả nghiên cứu của đề tài có thể sử dụng làm tài liệu tham khảo cho giáo viên Toán THCS trong công tác bồi dưỡng HSG, đồng thời là tài liệu tự học hữu ích cho học sinh khá, giỏi lớp 8, 9 có nguyện vọng tìm hiểu sâu hơn về số học sơ cấp.

== 2. Kiến nghị

- Đối với tổ, nhóm chuyên môn: nên đưa chuyên đề đồng dư thức vào kế hoạch bồi dưỡng HSG Toán 8, 9 như một nội dung độc lập, có thời lượng phù hợp (tối thiểu 6--8 tiết như đề xuất ở mục 3.2).
- Đối với giáo viên: cần chú trọng hướng dẫn học sinh nắm chắc bản chất (định nghĩa, tính chất) của đồng dư thức trước khi luyện tập theo dạng, tránh dạy học theo lối "mẹo" thuần tuý.
- Hướng phát triển tiếp theo của đề tài: mở rộng nghiên cứu, thực nghiệm trên diện rộng với số liệu định lượng cụ thể; xây dựng thêm ngân hàng bài tập đồng dư thức có đáp án chi tiết, phân theo từng mức độ cho công tác bồi dưỡng HSG các cấp.

// ==========================================================
// TÀI LIỆU THAM KHẢO
// ==========================================================
= TÀI LIỆU THAM KHẢO

== A. Tài liệu trong nước

#refitem[[1] Bộ Giáo dục và Đào tạo (2018), _Chương trình giáo dục phổ thông môn Toán_ (ban hành kèm theo Thông tư số 32/2018/TT-BGDĐT ngày 26/12/2018), Hà Nội.]
#refitem[[2] Vũ Hữu Bình (2020), _Nâng cao và phát triển Toán 8_ (Tập 1, Tập 2), Nhà xuất bản Giáo dục Việt Nam, Hà Nội.]
#refitem[[3] Vũ Hữu Bình (2021), _Nâng cao và phát triển Toán 9_ (Tập 1, Tập 2), Nhà xuất bản Giáo dục Việt Nam, Hà Nội.]
#refitem[[4] Vũ Hữu Bình (2019), _9 chuyên đề Số học Trung học cơ sở_, Nhà xuất bản Giáo dục Việt Nam, Hà Nội.]
#refitem[[5] Phan Huy Khải (2016), _Các chuyên đề bồi dưỡng học sinh giỏi Toán Trung học cơ sở -- Số học_, Nhà xuất bản Đại học Sư phạm, Hà Nội.]
#refitem[[6] Nguyễn Vũ Lương, Phạm Văn Hùng, Nguyễn Ngọc Thắng (2010), _Các bài giảng về Số học_, Nhà xuất bản Đại học Quốc gia Hà Nội, Hà Nội.]
#refitem[[7] Tạp chí Toán học và Tuổi trẻ, chuyên mục Số học -- Đề ra kì này (các số phát hành giai đoạn 2015--2024), Nhà xuất bản Giáo dục Việt Nam.]
#refitem[[8] Vũ Thị Liên (2024), "Tổng quan nghiên cứu về bồi dưỡng học sinh giỏi môn Toán cấp Trung học cơ sở", _Tạp chí Thiết bị Giáo dục_, số 04/2024.]

== B. Tài liệu nước ngoài

#refitem[[9] Burton, D. M. (2010), _Elementary Number Theory_, 7th edition, McGraw-Hill Education, New York.]
#refitem[[10] Niven, I., Zuckerman, H. S., Montgomery, H. L. (1991), _An Introduction to the Theory of Numbers_, 5th edition, John Wiley & Sons, New York.]
#refitem[[11] Andreescu, T., Andrica, D., Feng, Z. (2007), _104 Number Theory Problems: From the Training of the USA IMO Team_, Birkhäuser, Boston.]
#refitem[[12] Crawford, M. (2006), _Introduction to Number Theory_, AoPS Incorporated (Art of Problem Solving), Alpine.]
#refitem[[13] National Council of Teachers of Mathematics (NCTM) (2000), _Principles and Standards for School Mathematics_, NCTM, Reston, VA.]
#refitem[[14] Common Core State Standards Initiative (2010), _Common Core State Standards for Mathematics_, National Governors Association Center for Best Practices & Council of Chief State School Officers, Washington, D.C.]

// ==========================================================
// PHỤ LỤC
// ==========================================================
= PHỤ LỤC

== Phụ lục 1. Mẫu phiếu khảo sát ý kiến giáo viên

(Dùng để khảo sát thực trạng dạy học chuyên đề Số học -- đồng dư thức tại đơn vị, phục vụ cho việc bổ sung số liệu thực tiễn khi áp dụng đề tài.)

- Câu 1. Thầy/Cô có thường xuyên đưa nội dung đồng dư thức vào bồi dưỡng HSG Toán lớp 8, 9 không? (Thường xuyên / Thỉnh thoảng / Chưa bao giờ)
- Câu 2. Theo Thầy/Cô, mức độ cần thiết của việc xây dựng tài liệu chuyên đề đồng dư thức riêng cho học sinh THCS như thế nào? (Rất cần thiết / Cần thiết / Không cần thiết)
- Câu 3. Những khó khăn Thầy/Cô thường gặp khi dạy học sinh phần Số học -- đồng dư thức là gì?

== Phụ lục 2. Đề kiểm tra khảo sát đề xuất (45 phút)

Đề kiểm tra gồm 5 câu, tương ứng với các Dạng 1, 3, 4, 5, 6 đã trình bày ở mục 2.5, dùng làm bài khảo sát đầu vào/đầu ra khi tổ chức thực nghiệm sư phạm theo phương án đề xuất ở mục 3.3 (nội dung cụ thể do giáo viên áp dụng biên soạn, lựa chọn từ hệ thống bài tập tự luyện tại mục 3.5 hoặc bổ sung thêm theo đối tượng học sinh thực tế).

== Phụ lục 3. Đáp số, hướng dẫn giải tóm tắt hệ thống bài tập tự luyện (mục 3.5)

#figure(
  table(
    columns: (0.6fr, 2.1fr, 2.5fr),
    align: (center, left, left),
    stroke: 0.5pt + gray,
    fill: (x, y) => if y == 0 { rgb("#D9E2F3") } else { white },
    [*Bài*], [*Đáp số / kết luận*], [*Gợi ý mô-đun, chu kì*],
    [1], [Số dư là $1$], [Mô-đun $5$; chu kì của $3^n$ là $4$; $2024 equiv 0 space (mod 4)$],
    [2], [Số dư là $7$], [Mô-đun $9$; chu kì của $2^n$ là $6$; $100 equiv 4 space (mod 6)$],
    [3], [Số dư là $2$], [Mô-đun $11$; chu kì của $7^n$ là $10$ (đúng bằng $p-1$); $333 equiv 3 space (mod 10)$],
    [4], [Số dư là $10$], [Mô-đun $13$: $3^2024 equiv 9$ (chu kì $3$), $5^2024 equiv 1$ (chu kì $4$); tổng $equiv 10$],
    [5], [Chữ số tận cùng là $9$], [Mô-đun $10$; chu kì của $9^n$ là $2$; $2023$ lẻ],
    [6], [Chữ số tận cùng là $5$], [$2^2023 equiv 8$, $3^2023 equiv 7 space (mod 10)$; tổng $equiv 15 equiv 5$],
    [7], [Hai chữ số tận cùng là $16$], [Mô-đun $100$; chu kì của $6^n$ (từ $n=2$) là $5$: $36, 16, 96, 76, 56$],
    [8], [Hai chữ số tận cùng là $96$], [Nhận xét $2^2024 dot 3^2024 = 6^2024$, áp dụng chu kì như Bài 7],
    [9], [Đúng: $n^3 - n$ chia hết cho $3$], [Mô-đun $3$: cả $3$ trường hợp $n equiv 0, 1, 2$ đều cho kết quả $equiv 0$],
    [10], [Đúng: chia hết cho $30 = 2 dot 3 dot 5$], [Kết hợp xét mô-đun $2$, $3$ và $5$ (tương tự Ví dụ 2.3 mở rộng)],
    [11], [Đúng với mọi $n$ tự nhiên], [Mô-đun $9$; chứng minh bằng quy nạp: đúng với $n=0$, giả sử đúng với $n=k$ thì đúng với $n=k+1$],
    [12], [Đúng với mọi $n$ tự nhiên], [Nhận xét $11 equiv 4 space (mod 7)$ nên $11^n - 4^n equiv 4^n - 4^n equiv 0 space (mod 7)$],
    [13], [Phương trình vô nghiệm nguyên], [Mô-đun $4$: $2023 equiv 3$, không thuộc ${0,1,2}$],
    [14], [Phương trình vô nghiệm nguyên], [Mô-đun $3$: $x^2 - 3y^2 equiv x^2$, mà $17 equiv 2 space (mod 3)$ không phải số dư của số chính phương],
    [15], [Vô nghiệm nguyên với mọi $z$], [Mô-đun $4$ như Ví dụ 2.4: $4z+3 equiv 3$, không thuộc ${0,1,2}$],
    [16], [Phương trình vô nghiệm nguyên], [Mô-đun $9$: lập phương chỉ có thể $equiv 0, 1, 8$; tổng hai lập phương chỉ nhận ${0,1,2,7,8}$, mà $2022 equiv 6$],
    [17], [Đúng: các số tận cùng $2,3,7,8$ không là số chính phương], [Mô-đun $10$: số chính phương chỉ có thể tận cùng $0,1,4,5,6,9$],
    [18], [Đúng: tổng ba số chính phương liên tiếp không là số chính phương], [Mô-đun $3$: tổng luôn $equiv 2$, không thuộc ${0,1}$],
    [19], [$A$ không là số chính phương], [Mô-đun $4$: $2023^2023 equiv 3$, $2024^2024 equiv 0$; tổng $equiv 3$, không thuộc ${0,1}$],
    [20], [$B$ không là số chính phương với mọi $n$], [Phân tích $B = 21 dot 4^n = 21 dot (2^n)^2$; vì $21$ không là số chính phương nên $B$ không thể là số chính phương],
    [21], [$p = 3$ là số nguyên tố duy nhất], [Mô-đun $3$: trong ba số $p, p+4, p+8$ luôn có một số chia hết cho $3$ (tương tự Ví dụ 2.6)],
    [22], [$p = 3$ là số nguyên tố duy nhất], [Mô-đun $3$: nếu $p equiv 1$ thì $2p+1$ chia hết cho $3$; nếu $p equiv 2$ thì $4p+1$ chia hết cho $3$],
    [23], [Đúng: $p^2-1$ chia hết cho $24$ với mọi số nguyên tố $p>3$], [$p^2-1=(p-1)(p+1)$: chia hết cho $8$ (hai số chẵn liên tiếp) và chia hết cho $3$ (Ví dụ 2.6)],
    [24], [$p = 3$ là số nguyên tố duy nhất], [Mô-đun $3$: với $p eq.not 3$, $p^2 equiv 1$ nên $p^2+2 equiv 0 space (mod 3)$],
  ),
  caption: [Đáp số tóm tắt hệ thống 24 bài tập tự luyện],
)
