#import ".../../style.typ": project,loigiai,nhanxet,chuy,vidu,dinhly,dinhnghia, styled-table, 
// Áp dụng định dạng toàn cục cho toàn bộ tài liệu bên dưới
#show: project.with(
  title: "ỨNG DỤNG CỦA ĐỒNG DƯ THỨC TRONG GIẢI TOÁN SỐ HỌC LỚP 8 – 9",

  authors: ("Đặng Thanh Quý",),
  date: "Tháng 9 năm 2026",
)
#page(header: none)[
  #set align(left)
  #text(size: 16pt, weight: "bold")[MỤC LỤC]
  #v(0.5cm)
  #outline(title: none, indent: 1.5em, depth: 2)
]
#pagebreak() 
#heading("LỜI NÓI ĐẦU", numbering: none)

Số học từ lâu đã được xem là "bà hoàng" của toán học với sức hấp dẫn kỳ lạ, đòi hỏi ở người học không chỉ kiến thức nền tảng vững chắc mà còn cả tư duy logic sắc bén và khả năng sáng tạo không ngừng. Trong chương trình Toán Trung học cơ sở, đặc biệt là ở các lớp 8 và 9, mảng kiến thức về chia hết, số dư và các tính chất số học luôn chiếm một vị trí quan trọng trong các kỳ thi học sinh giỏi (HSG) các cấp. Tuy nhiên, hành trang kiến thức trong sách giáo khoa chính khóa thường chưa đủ để học sinh chinh phục những bài toán số học mang tính phân loại cao.

Nhận thấy sự thiếu hụt một hệ thống tài liệu chuyên sâu, bài bản và có tính ứng dụng thực tiễn về *Đồng dư thức* – một công cụ mạnh mẽ được khai sinh bởi thiên tài toán học Carl Friedrich Gauss – tác giả đã biên soạn tài liệu *"Ứng dụng của đồng dư thức trong giải toán số học lớp 8 – 9: Phân dạng, phương pháp và định hướng dạy học theo năng lực"*.

Tài liệu cung cấp các kiến thức về đồng dư thức ngoài ra cung cấp các dạng bài tập, câu hỏi trích xuất từ các đềthi và dành một phần quan trọng để phân tích xu hướng ra đề và đề xuất định hướng dạy học theo phát triển năng lực, giúp giáo viên có cái nhìn tổng quan và chiến lược bồi dưỡng hiệu quả. 

Mặc dù đã có nhiều cố gắng, song tài liệu khó tránh khỏi những thiếu sót nhất định. Tác giả rất mong nhận được những ý kiến đóng góp quý báu từ thầy và các bạn để tài liệu ngày càng hoàn thiện hơn.

#v(1em)
#align(right)[
  *Thành phố Huế, tháng 9 năm 2026* \
  *Tác giả* \
  *Đặng Thanh Quý*
]

#pagebreak()

#heading("Mở đầu", numbering: none)

== Lý do chọn đề tài

Số học là một trong những phân môn có vị trí đặc biệt quan trọng trong chương trình Toán THCS, đặc biệt trong các kỳ thi học sinh giỏi (HSG) Toán 8 và Toán 9.  Mảng Số học không chỉ trang bị kiến thức nền tảng về số tự nhiên, số nguyên, quan hệ chia hết, ước chung, bội chung, số nguyên tố, hợp số, mà còn là môi trường lí tưởng để rèn luyện tư duy suy luận lô-gic, tư duy thuật toán và năng lực giải quyết vấn đề. Trong những năm gần đây, các bài toán số học liên quan đến đồng dư thức xuất hiện ngày càng nhiều trong đề thi HSG các cấp, từ cấp trường, cấp huyện đến cấp tỉnh và thành phố, với mức độ yêu cầu ngày càng cao về tư duy và kỹ thuật giải.

Đồng dư thức, được giới thiệu bởi Carl Friedrich Gauss năm 1801 trong tác phẩm _Disquisitiones Arithmeticae_, là một công cụ mạnh mẽ trong lý thuyết số. Ứng dụng của nó trải rộng từ các bài toán tìm số dư, chứng minh chia hết, tìm chữ số tận cùng, giải phương trình nghiệm nguyên, cho đến các bài toán về số chính phương và chứng minh tồn tại. Việc nắm vững lý thuyết đồng dư và các kỹ thuật ứng dụng là hành trang không thể thiếu cho cả giáo viên và học sinh trong quá trình bồi dưỡng và thi HSG.

Tuy nhiên, ngày càng nhiều học sinh hứng thú với chủ đề này; đặc biệt khi các gia đình ngày càng đầu tư cho con em mình phát triển tư dduytoans học. Để đáp ứng nhu cầu tìm hiểu của các học sinh và cung cấp một nguồn tài liệu hay phục vụ cho việc dạy học sau này đặc biệt khi chưa có trải nghiệm thực tế bồi dưỡng HSG. Bài toán đặt ra là: _Làm thế nào để xây dựng một hệ thống chuyên đề đồng dư thức vừa đảm bảo tính khoa học, vừa có tính ứng dụng thực tiễn cao?_

Xuất phát từ lý do trên, tôi chọn đề tài *“Ứng dụng của đồng dư thức trong giải toán số học lớp 8 – 9: Phân dạng, phương pháp và định hướng dạy học theo năng lực”* làm đề tài cho dự án lần này.

== Mục đích nghiên cứu

- Hệ thống hóa toàn bộ lý thuyết cơ bản và nâng cao về đồng dư thức theo trình tự logic và khoa học.
- Phân dạng các bài toán ứng dụng đồng dư thức trong chương trình Toán 8 – 9, với phương pháp giải chi tiết và bài tập luyện tập theo từng cấp độ nhận thức.
- Phân tích xu hướng ra đề thi HSG giai đoạn 2021 – 2026, từ đó đề xuất định hướng dạy học phù hợp.
- Cung cấp hệ thống đề thi thử HSG để học sinh tự luyện tập và giáo viên tham khảo.

== Đối tượng và phạm vi nghiên cứu

- *Đối tượng nghiên cứu:* Lý thuyết đồng dư thức, các dạng bài tập ứng dụng trong chương trình Toán 8 – 9, và phương pháp dạy học theo định hướng phát triển năng lực.
- *Phạm vi nội dung:* Tập trung vào các ứng dụng của đồng dư thức trong giải toán số học (chia hết, số dư, chữ số tận cùng, phương trình nghiệm nguyên, số chính phương).
- *Phạm vi thời gian:* Các đề thi HSG từ năm học 2021 – 2022 đến 2025 – 2026.

== Phương pháp nghiên cứu

- *Phương pháp nghiên cứu lý luận:* Tổng hợp, phân tích và hệ thống hóa các tài liệu về lý thuyết số, đồng dư thức từ các giáo trình, sách chuyên khảo và bài báo khoa học trong nước và quốc tế.
- *Phương pháp phân tích – tổng hợp:* Phân tích các đề thi HSG, phân loại dạng bài và tổng hợp phương pháp giải.
- *Phương pháp so sánh:* So sánh cách ra đề giữa các tỉnh/thành và giữa các năm để rút ra xu hướng.

== Cấu trúc đề tài

Ngoài phần Mở đầu và Kết luận, đề tài gồm 4 chương: 
- Chương 1: Trình bày cơ sở lý luận và thực tiễn; 
- Chương 2: Hệ thống lý thuyết đồng dư thức; 
- Chương 3: Phân dạng bài tập và phương pháp giải; 
- Chương 4: Ngân hàng câu hỏi trích xuất đề thi và đề xuất xu hướng. 
- Phần Phụ lục cung cấp 05 đề thi thử HSG.

#pagebreak()

= CƠ SỞ LÝ LUẬN VÀ THỰC TIỄN
== Tổng quan nghiên cứu

Ở Việt Nam, mảng Số học THCS đã được nhiều tác giả biên soạn công phu. Bộ sách "Nâng cao và phát triển Toán" (các lớp 6, 7, 8, 9) và "9 chuyên đề Toán THCS" (trong đó có tập riêng "9 chuyên đề Số học THCS", dày 108 trang) của Nhà giáo Nhân dân Vũ Hữu Bình  là bộ tài liệu kinh điển, gắn bó với nhiều thế hệ học sinh chuyên Toán, trình bày tóm tắt lí thuyết rồi phân chuyên đề bài tập kèm lời giải chi tiết. Gần đây hơn, cuốn "Bài tập Số học và Đại số chọn lọc cho học sinh THCS" do GS. Nguyễn Tiến Dũng và GS. Đỗ Đức Thái chủ biên  là một nguồn tư liệu cập nhật, tập hợp nhiều bài toán số học hay kèm lời giải chi tiết, phù hợp bổ sung cho hệ thống bài tập của chuyên đề. Bên cạnh đó, tác giả Phan Huy Khải  và nhóm tác giả Nguyễn Vũ Lương, Phạm Văn Hùng, Nguyễn Ngọc Thắng  đã trình bày số học ở mức độ sâu hơn, có đề cập đến đồng dư nhưng chủ yếu hướng tới học sinh chuyên Toán cấp THPT.

Trên thế giới, đồng dư thức là nội dung kinh điển của lí thuyết số sơ cấp, trình bày chặt chẽ trong "Elementary Number Theory" của David M. Burton  và "An Introduction to the Theory of Numbers" của Niven, Zuckerman, Montgomery. Đối với học sinh phổ thông và học sinh Olympic, "104 Number Theory Problems" của Andreescu, Andrica, Feng  và giáo trình "Introduction to Number Theory" của Mathew Crawford (Art of Problem Solving -- AoPS) trình bày đồng dư thức theo hướng ứng dụng giải toán, với hệ thống ví dụ, bài tập phong phú, được nhiều quốc gia dùng bồi dưỡng học sinh năng khiếu Toán bậc THCS.

== Cơ sở lý luận
=== Vị trí của số học trong chương trình Toán THCS

Số học là một phân môn xuyên suốt chương trình Toán THCS, từ lớp 6 đến lớp 9. Từ các khái niệm cơ bản như ước, bội, số nguyên tố ở lớp 6, đến các phép toán trên số nguyên, lũy thừa và chia hết ở lớp 7 – 8, rồi đến các bài toán số học phức hợp ở lớp 9. Đồng dư thức, dù không được trình bày chính thức trong sách giáo khoa phổ thông, lại là công cụ ngầm được sử dụng rộng rãi để giải quyết các bài toán số học phức tạp.

Theo tài liệu nghiên cứu của Thái Thị Nga (2024) tại Trường Đại học Hải Phòng, đồng dư thức được giới thiệu cho sinh viên ngành Sư phạm Toán trong học phần Số học và các tính chất của đồng dư “được ứng dụng rất nhiều trong thực tiễn cuộc sống cũng như trong các bộ môn khoa học khác”. Điều này cho thấy tầm quan trọng của việc trang bị kiến thức đồng dư cho giáo viên THCS.

Để có thêm căn cứ xác định mức độ và phạm vi khai thác đồng dư thức phù hợp với học sinh THCS Việt Nam, đề tài tiến hành đối chiếu sơ bộ cách bố trí nội dung số học – lí thuyết chia hết trong chương trình Toán phổ thông của Việt Nam với chương trình của Hoa Kỳ (theo Common Core State Standards và định hướng của NCTM) và hệ thống bồi dưỡng học sinh năng khiếu theo tài liệu AoPS, như bảng 1.1 dưới đây.

#styled-table(
  columns: (2fr, 2fr, 2fr),
  inset: 8pt,
  align: (center, left, center),
  stroke: 0.5pt,
[*Chương trình*],[*Vị trí mạch Số học – chia hết*],	[*Mức độ đề cập đồng dư thức*],
[Việt Nam (GDPT 2018)],[Xuyên suốt lớp 6–9; trọng tâm chia hết ở lớp 6],[Chưa đưa vào chương trình chính khoá, chỉ có ở tài liệu bồi dưỡng HSG tự phát],
[Hoa Kỳ (Common Core, NCTM)	Number and Operations], [Trải dài từ lớp 6–8 (chia hết, ước, bội)],	[Không đưa chính khoá; được khai thác trong các câu lạc bộ Toán, kì thi AMC 8],
[Tài liệu bồi dưỡng năng khiếu quốc tế (AoPS)],	[Giáo trình Number Theory riêng, dành cho học sinh 11–15 tuổi],[Trình bày hệ thống, đầy đủ định nghĩa, tính chất, ứng dụng đồng dư thức]
)
=== Phân bậc nhận thức trong dạy học toán

Theo thang nhận thức Bloom cải tiến, quá trình học tập toán được phân thành sáu bậc: 
Nhớ – Hiểu – Vận dụng – Phân tích – Đánh giá – Sáng tạo.
Đối với chủ đề đồng dư thức, các bậc nhận thức được cụ thể hóa như sau:

#styled-table(
  columns: (0.8fr, 2fr, 2fr),
  inset: 8pt,
  align: (center, left, left),
  stroke: 0.5pt,
  [*Bậc nhận thức*], [*Mô tả đối với đồng dư thức*], [*Ví dụ*],
  [Nhớ], [Nhớ định nghĩa, ký hiệu, các tính chất cơ bản], [Viết được $a equiv b space (mod m)$],
  [Hiểu], [Hiểu ý nghĩa của đồng dư, phân biệt với đẳng thức], [Hiểu đươc $17 equiv 2 space (mod 5)$ và dạng biểu diễn khác],
  [Vận dụng], [Áp dụng tính chất để giải bài tập cơ bản], [Tìm số dư của một lũy thừa],
  [Phân tích], [Phân tích bài toán, chọn môđun thích hợp], [Chứng minh chia hết cho hợp số],
  [Đánh giá], [So sánh, lựa chọn cách giải tối ưu], [Chọn giữa dùng Fermat nhỏ hay Euler],
  [Sáng tạo], [Kết hợp nhiều kỹ thuật, xây dựng bài toán mới], [Giải hệ đồng dư bằng CRT],
)

== Cơ sở thực tiễn

=== Thực trạng chuyên đề đồng dư thức

Qua khảo sát các tài liệu bồi dưỡng HSG và đề thi thực tế, có thể nhận thấy các đặc điểm sau:

- Vì "Đồng dư thức" không phải là một nội dung số học được sử dụng dạy học rộng rãi trong sách giáo khoa mà tập trung mở rộng các chuyên đề chia hết; phép chia có dư trong chương trình để bồi dưỡng HSG. Nên rất thiếu một hệ thống các tài liệu, phương pháp hiệu quả phụ hợp để dạy học cho học sinh. Giáo viên cần phải tìm hiểu, đúc kết từ nhiều tài liệu rời rạc kết hợp cập nhật thường xuyên các dạng đề thi mới nên gặp không ít khó khăn.

- *Về phía học sinh:* Học sinh giỏi thường gặp khó khăn khi tiếp cận đồng dư thức vì đây là kiến thức nằm ngoài sách giáo khoa chính khóa.Tuy nhiên, đây lại là công cụ được sử dụng rộng rãi trong đề thi HSG, chiếm khoảng 25–30% nội dung phần số học. Không chỉ các bạn thi HSG, ngày nhiều học sinh hứng thú với chủ đề này vì tính ứng dụng có nó đối với thực tế mà lại không có tài liệu tham khảo.

=== Phân tích xu hướng đề thi HSG qua các năm

Theo phân tích các đề thi HSG Toán 8 và Toán 9 từ năm học 2021 – 2022 đến
 2025 – 2026 từ nguồn THCS.TOANMATH.COM, các bài toán đồng dư thức có xu hướng:

+ *Tăng về tần suất:* Từ 1–2 câu/đề (2021–2022) lên 2–3 câu/đề (2025–2026).
+ *Tăng về độ khó:* Các bài toán ngày càng đòi hỏi kết hợp nhiều kỹ thuật (Fermat nhỏ + Dirichlet, CRT + chia hết).
+ *Đa dạng hóa dạng bài:* Bên cạnh các dạng truyền thống, xuất hiện thêm dạng bài về chứng minh tồn tại, tối ưu hóa và ứng dụng thực tiễn.
+ *Tích hợp với các mạch kiến thức khác:* Đồng dư thức kết hợp với đa thức, hình học tổ hợp, xác suất.

#pagebreak()

= HỆ THỐNG LÝ THUYẾT VỀ ĐỒNG DƯ THỨC

== Định nghĩa đồng dư thức

#dinhnghia("2.1", "Đồng dư thức", [
  Cho $a, b$ là các số nguyên, $m$ là số nguyên dương. Ta nói $a$ *đồng dư* với $b$ theo môđun $m$ nếu $a$ và $b$ có cùng số dư khi chia cho $m$. Ký hiệu:
  #align(center)[#text(size: 12pt, weight: "bold")[$a equiv b space (mod m)$]]

#h(-1em) Tức là: $a-b space dots.v m$

#h(-1em) Ngược lại, nếu $a$ và $b$ có số dư khác nhau khi chia cho $m$, ta viết $a not equiv b space (mod m)$.
])

#vidu("2.1", [
  $17 equiv 2 space (mod 5)$ vì $ 17= 5.3 + 2.$
  
  #h(-1cm) Tuy nhiên, $8 not equiv 3 space (mod 6)$ vì $8 - 3 = 5$ không chia hết cho $6$.
])

#chuy[
  $a equiv b space (mod m) <=> a - b space dots.v m <=> $ tồn tại số nguyên $k$ sao cho
   $a = b + k m$.
]
     * Nhận xét: *
  Quan hệ đồng dư theo môđun $m$ là một quan hệ tương đương trên tập số nguyên (có tính phản xạ, đối xứng và bắc cầu). Tập các số nguyên chia cho $m$ cùng dư $r$ tạo thành một lớp tương đương, gọi là *lớp đồng dư* modulo $m$.

== Các tính chất của đồng dư thức

#dinhly("2.1", "Các tính chất cơ bản", [
  Cho $a, b, c, d, m$ là các số nguyên, $m > 0$. Khi đó:

   #h(-1em) #text(weight: "bold")[(i) Tính chất phản xạ:] $a equiv a space (mod m)$

   #h(-1em) #text(weight: "bold")[(ii) Tính chất đối xứng:] Nếu $a equiv b space (mod m)$ thì $b equiv a space (mod m)$

   #h(-1em) #text(weight: "bold")[(iii) Tính chất bắc cầu:] Nếu $a equiv b space (mod m)$ và $b equiv c space (mod m)$ thì $a equiv c space (mod m)$

   #h(-1em) #text(weight: "bold")[(iv) Cộng, trừ từng vế:] Nếu $a equiv b space (mod m)$ và $c equiv d space (mod m)$ thì:

  $ a + c equiv b + d space (mod m)$; $quad a - c equiv b - d space (mod m) $

   #h(-1em) #text(weight: "bold")[(v) Nhân từng vế:] Nếu $a equiv b space (mod m)$ và $c equiv d space (mod m)$ thì $a c equiv b d space (mod m)$

   #h(-1em) #text(weight: "bold")[(vi) Nhân (chia) cả hai vế và môđun:]
  - $a equiv b space (mod m) => a c equiv b c space (mod m c)$ với $c > 0$
  - Nếu $a c equiv b c space (mod m)$ và $(c, m) = 1$ thì $a equiv b space (mod m)$

   #h(-2em) #text(weight: "bold")[(vii) Đồng dư theo nhiều môđun:]
   
    #h(-1.5em)Nếu $a equiv b space (mod m_1), a equiv b space (mod m_2), dots, a equiv b space (mod m_n)$ thì $a equiv b space (mod [m_1, m_2, dots, m_n])$.
])

#vidu("2.2", [
  Tìm số dư khi chia $92^94$ cho $15$.])

  #loigiai[
    Ta có $92 equiv 2 space (mod 15)$, suy ra $92^94 equiv 2^94 space (mod 15)$. 
    
  #h(-1cm)Lại có $2^4 equiv 1 space (mod 15)$, nên $2^94 = (2^4)^23 dot 2^2 equiv 1^23 dot 4 = 4 space (mod 15)$. Vậy $92^94$ chia $15$ dư $4$.
  ]


== Các định lý quan trọng

#dinhly("2.2", "Định lý Fermat nhỏ", [
  Nếu $p$ là số nguyên tố và $a$ là số nguyên không chia hết cho $p$, thì:
  #align(center)[ $a^(p - 1) equiv 1 space (mod p)$ ]
  #h(-1.25em) *Hệ quả:* Với mọi số nguyên $a$ và số nguyên tố $p$:
  
   #align(center)[$a^p equiv a space (mod p)$.]
])

#vidu("2.3",[Cho p, p là số nguyên tố, 𝑝>5. Chứng minh $p^4$−1 chia hết cho 240.])
    #loigiai[ 

      #h(-1cm)
      Ta có: $240 = 3.5.16$ và $gcd(3,5,16)=1$ đôi một nguyên tố cùng nhau.
      
      - Với p là số nguyên tố, $gcd(p,3)=1$. Theo định lý Fermat nhỏ: 

      #h(-0.3cm) $p^2 equiv 1 mod (3)$. Suy ra  $p^4 equiv 1 mod (3)$ hay $p^4-1$ chia hết cho 3.

      - $gcd(p,5)= 1$. Nên $p^4 equiv 1 mod (5)$ hay $p^4-1$ chia hết cho 5.

      - Xét $p^4 -1 = (p^2-1)(p^2+1)=(p-1)(p+1)(p^2+1)$. 

      Đặt $p^2=8k +1$, $k$ là số nguyên dương. Khi đó:

#h(-0.5cm)
      $p^4 -1 = (p^2-1)(p^2+1)=8k(8k+2)=16k(4k+1)$ chia hết cho 16.
    
    Vậy $p^4$−1 chia hết cho 240 (đfcm).
    ]

#v(0.4cm)
#dinhly("2.3", "Định lý Euler", [
  Nếu $a$ và $m$ là hai số nguyên tố cùng nhau $(a, m) = 1$, thì:
  #align(center)[$a^(phi(m)) equiv 1 space (mod m)$]
   #h(-1.5em) trong đó $phi(m)$ là hàm Euler – số các số nguyên dương nhỏ hơn $m$ và nguyên tố cùng nhau với $m$.

  #h(-1cm)
  #text(size: 14pt, weight: "bold")[ Hàm Euler:
]
Chỉ số Phi Euler, ký hiệu là $phi(n)$, của một số nguyên dương $n$ là số lượng các số nguyên dương $k$ trong khoảng $1 <= k <= n$ sao cho $k$ và $n$ nguyên tố cùng nhau, tức là $gcd(k, n) = 1$.

#h(-1cm)
 *Công thức tổng quát*
Giả sử số nguyên dương $n$ được phân tích ra thừa số nguyên tố: $ n = p_1^(k_1) dot p_2^(k_2) dots.c p_m^(k_m) $

#h(-1cm)
Khi đó, chỉ số Phi Euler được tính bằng công thức:
$ phi(n) = n dot (1 - 1/p_1) dot (1 - 1/p_2) dots.c (1 - 1/p_m) $

#h(-1cm)
])

#vidu("2.4", [
  Tìm số dư khi chia $7^1000$ cho $10$.])
  #loigiai[

    #h(-1em)
    Ta có $(7, 10) = 1$ và $phi(10) = 4$. 
  Theo định lý Euler:
  #align(center)[ $7^4 equiv 1 space (mod 10)$. ]
    
    #h(-1cm) Vì $1000 = 4 dot 250$, nên $7^1000 = (7^4)^250 equiv 1^250 = 1 space (mod 10)$. 
    
    Vậy $7^1000$ chia $10$ dư $1$.
  ]


#dinhly("2.4", "Định lý Thặng dư Trung Hoa (CRT)", [
  Cho $m_1, m_2, dots, m_n$ là các số nguyên dương đôi một nguyên tố cùng nhau. Hệ phương trình đồng dư:

  $ x equiv a_1 space (mod m_1)$, $x equiv a_2 space (mod m_2), dots, x equiv a_n space (mod m_n) $
  có nghiệm duy nhất theo môđun $M = m_1 m_2 dots m_n$.
])
#vidu("2.5", [
  Tìm số tự nhiên $x$ nhỏ nhất thỏa mãn:

   $x equiv 2 space (mod 3)$, $x equiv 3 space (mod 5)$, $x equiv 2 space (mod 7)$.])

  #loigiai[

    #h(-1cm)Vì $3, 5, 7$ đôi một nguyên tố cùng nhau hay $gcd(3,5,7)=1 $, theo _ Định lý giá trị thặng dư Trung Hoa_ tồn tại nghiệm duy nhất: $n= 105$.
    
    #h(-1cm)Từ $x equiv 3 space (mod 5)$ nên đặt $x= 3+5t$ (t$in ZZ $).
    
    #h(-1cm) $ x= 3+ 3t +2t equiv 2t mod(3)$ và $ x equiv 2 mod(3)$. Suy ra $t equiv 1 mod(3)$. Thay lại vào x, $x equiv 8 mod(15)$

    #h(-1cm)Đặt $x= 8+15m$ (m $in ZZ $) $= 7+ 14m+ 1+ m equiv (1+ m) mod(7) $
    
    #h(-1cm)và $ x equiv 2 mod(7)$. Suy ra $m equiv 1 mod (7)$. 
    
    #h(-1cm)Thay lại vào x, $x equiv 23 mod(105)$

    #align(center)[Vậy số tự nhiên x nhỏ nhất là 23]
  ]

#pagebreak()
#dinhly("2.5", "Định lý Wilson", [
  $p$ là số nguyên tố khi và chỉ khi 
  
  $(p - 1)! equiv -1 space (mod p)$.
])

#vidu("2.6", [
  Tìm số dư của $28!$ khi chia cho 31])

  #loigiai[ Ta có: 31 là số nguyên tố. Áp dụng định lý Wilson: 
  
  $(31 -1)! equiv -1 mod(31)$ hay $30! equiv -1 mod(31)$

 #h(-1cm)
  Lại có: $30! = 28! .29.30$ trong đó $30 equiv -1 mod(31); 29 equiv -2 mod(31)$ 
  
  #h(-1cm)Nên 
 $28!.29.30 mod (31) equiv -1 mod(31) equiv 30 mod(31)$. Chia cả 2 vế cho 2 ta được: $28! equiv 15 mod(31)$.

  Vậy số dư khi chia $28!$ cho 31 là 15.

  ]
// ============================================================
// CHƯƠNG 3
// ============================================================
= PHÂN DẠNG BÀI TẬP VÀ PHƯƠNG PHÁP GIẢI

 Trên cơ sở khảo sát đề thi, chương này phân loại các bài toán ứng dụng đồng dư thức phù hợp với học sinh lớp 8, 9 thành 7 dạng cơ bản và bài toán tổng hợp. Mỗi dạng được trình bày theo cấu trúc thống nhất: *Phương pháp giải* (các bước cụ thể) -- *Ví dụ có lời giải chi tiết* (bám sát đúng các bước phương pháp) -- *Bài tập tương tự*

==  Dạng 1: Chứng minh chia hết
=== Phương pháp

Để chứng minh $A space  dots.v space m$ bằng đồng dư thức, ta thực hiện các bước:

+ *Biến đổi* biểu thức $A$ về dạng tổng/hiệu/tích của các lũy thừa hoặc biểu thức đơn giản hơn.
+ *Chọn môđun* phù hợp (thường là $m$ hoặc ước của $m$).
+ *Tính đồng dư* của từng thành phần theo môđun đã chọn.
+ *Kết hợp* các kết quả để suy ra $A equiv 0 space (mod m)$.

#chuy[
  Khi $m$ là hợp số, ta có thể phân tích $m$ thành tích các thừa số đôi một nguyên tố cùng nhau, rồi chứng minh $A$ chia hết cho từng thừa số.
]

=== Ví dụ có hướng dẫn giải

#vidu("3.1", [
  Chứng minh rằng $A = 3^p - 2^p - 1$ chia hết cho $42 p$ với mọi số nguyên tố $p > 7$.])

  #loigiai[ 
    Ta có $42 p = 2 dot 3 dot 7 dot p$. Vì $2, 3, 7, p$ đôi một nguyên tố cùng nhau ($p > 7$), ta chứng minh $A$ chia hết cho từng thừa số.

    - *Chia hết cho 2:* $A equiv 1^p - 0 - 1 = 0 space (mod 2)$. 
    - *Chia hết cho 3:* Vì $p$ lẻ, $p = 2k + 1$ với $k>3$. Ta có $A = 3^p - 2^(2k+1) - 1 equiv 0 - 4^k dot 2 - 1 equiv -2 - 1 = -3 equiv 0 space (mod 3)$.
    - *Chia hết cho 7:* $A = 3^(2k+1) - 2^(2k+1) - 1 = 3 dot 9^k - 2^(2k+1) - 1$. 
    
    #h(-1em)Ta có $9 equiv 2 space (mod 7)$, nên $A equiv 3 dot 2^k - 2^(2k+1) - 1 space (mod 7).$ Ta có với k, $p=2k+1$ là số nguyên tố: $2^k$ chia 7 có các số dư là {1,4}.

   +) $2^k equiv 1 mod(7)$

     #h(-1cm) thì $A equiv 3 dot 2^k - 2^(2k+1) - 1 space (mod 7) equiv 3-2-1 (mod 7) equiv 0 (mod 7)$  

    +) $2^k equiv 4 mod(7)$
 
    #h(-1cm) thì $A equiv 3.4-2.4^2-1 space (mod 7) equiv 0 (mod 7)$ 

    - *Chia hết cho p:* Theo định lý Fermat nhỏ:
    
    #h(-1cm) $3^p equiv 3 space (mod p)$ và $2^p equiv 2 space (mod p)$. Do đó $A equiv 0 space (mod p)$. 

    Vậy $A space  dots.v space 42 p$.
  ]

#v(0.5cm)
=== Bài tập tương tự

*Bài 1.* Chứng minh rằng $2^51 - 1$ chia hết cho $7$.

*Bài 2.* Chứng minh rằng $17^19 + 19^17$ chia hết cho $18$.

*Bài 3.* Cho $n in ZZ$. Chứng minh rằng $A = n^3 (n^2 - 7)^2 - 36 n$ chia hết cho $7$.

*Bài 4.* Chứng minh rằng $2^70 + 3^70$ chia hết cho $13$.

*Bài 5.* Chứng minh rằng với mọi số nguyên dương $n$, 

#h(1cm) $B = 5^(n+2) + 26 dot 5^n + 8^(2n+1)$ chia hết cho $59$.

_HD:_ Chứng minh $5^2 equiv 25 space (mod 59)$, $5^3 equiv 8 space (mod 59)$ và $8^2 equiv 5 space (mod 59)$, từ đó $B equiv 25 dot 5^n + 26 dot 5^n + 8 dot 5^n = 59 dot 5^n equiv 0 space (mod 59)$.

#v(0.4cm)
== Dạng 2: Tìm số dư trong phép chia

=== Phương pháp

  -  Xác định mô-đun $m$ (số chia) và biểu thức luỹ thừa $a^n$ cần tìm số dư khi chia cho $m$.
  - Tính lần lượt số dư của $a^1, a^2, a^3, dots$ theo mô-đun $m$ cho đến khi số dư lặp lại giá trị đã gặp; xác định chu kì $k$.
  - Thực hiện phép chia số mũ $n$ cho chu kì $k$: $n = k q + r$, $0 <= r < k$.
  - Kết luận: số dư cần tìm chính là số dư của $a^r$ theo mô-đun $m$  (nếu $r=0$, lấy số dư của $a^k$).

#chuy[
  Với hai số nguyên $a$ và $m$ ($m > 0$), luôn tồn tại duy nhất cặp $(q, r)$ sao cho $a = m q + r$, $0 <= r < m$. Để tìm số dư $r$, ta cần tìm $r$ thỏa mãn $a equiv r space (mod m)$ và $0 <= r < m$.
]
#v(0.4cm)
=== Ví dụ có hướng dẫn giải

#vidu("3.2", [
  Tìm số dư khi chia $5^70 + 7^50$ cho $12$.])

  #loigiai[

    #h(-1cm)Ta có $5^2 = 25 equiv 1 space (mod 12)$, suy ra $5^70 = (5^2)^35 equiv 1 space (mod 12)$.

    #h(-1cm)Tương tự, $7^2 = 49 equiv 1 space (mod 12)$, suy ra $7^50 = (7^2)^25 equiv 1 space (mod 12)$.

    #h(-1cm)Vậy $5^70 + 7^50 equiv 1 + 1 = 2 space (mod 12)$. Vậy số dư là $2$.
  ]

#v(0.4cm)
#vidu("3.3", [
  Tìm số dư của phép chia $5^2023$ cho $7$])

  #loigiai[

  #h(-1cm)  
  *Bước 1.* Mô-đun $m=7$, cần tìm số dư của $5^2023$.

 #h(-1cm)
  *Bước 2.* $5^1 equiv 5$; $5^2 equiv 4$; $5^3 equiv 6$; $5^4 equiv 2$; $5^5 equiv 3$; $5^6 equiv 1 space (mod 7)$. Chu kì $k=6$.

 #h(-1cm)
  *Bước 3.* $2023 = 6 dot 337 + 1$, suy ra $r=1$.

 #h(-1cm)
  *Bước 4.* $5^2023 equiv 5^1 equiv 5 space (mod 7)$. Vậy số dư là $5$.
]

  
#v(0.4cm)
=== Bài tập tương tự

*Bài 1.* Tìm số dư khi chia $3^2005 + 4^2005$ cho $11$.

*Bài 2.* Tìm số dư khi chia $1532^5 - 1$ cho $9$.

*Bài 3.* Tìm số dư khi chia $2^2024 + 3^2024$ cho $5$.

*Bài 4.* Tìm số dư khi chia $7^1000$ cho $13$.

*Bài 5.* Tìm số dư khi chia $5^1994$ cho $16$.

*Bài 6:* Tìm số dư của phép chia $3^2024 + 5^2024$ cho $13$.

#nhanxet[
Một biến thể đang xuất hiện nhiều trong đề thi gần đây là bài toán *tìm số dư của phép chia đa thức*, ví dụ: "Tìm số dư trong phép chia đa thức $P(x) = (x+2)(x+4)(x+6)(x+8) + 2025$ cho đa thức $Q(x) = x^2+10x+21$" (phỏng theo đề HSG Toán 9 cấp trường, THCS Kim Sơn -- Nghệ An, năm học 2024 -- 2025). Kĩ thuật cốt lõi vẫn là đặt ẩn phụ $t = x^2+10x$ để đưa $Q(x)$ về dạng đơn giản, sau đó biểu diễn $P(x)$ theo $t$ và tìm phần dư -- tương tự tinh thần "quy về một biến trung gian" như khi tìm chu kì luỹ thừa. Đây là dạng nên giới thiệu thêm cho học sinh giỏi, xuất sắc.]




#v(0.4cm)
== Dạng 3: Tìm chữ số tận cùng của một lũy thừa

=== Phương pháp

- *Tìm chu kỳ* của chữ số tận cùng khi lũy thừa $a^1, a^2, dots$ theo mô-đun $m$ .
- *Chia số mũ* $n$ cho chu kì $k$: $n = k q + r$.
- Chữ số (hai chữ số) tận cùng cần tìm chính là số dư của $a^r$ theo mô-đun $m$

=== Ví dụ có hướng dẫn giải

#vidu("3.4", [
  Tìm chữ số tận cùng của $7^2023$.])

  #loigiai[

  #h(-1cm)*Bước 1.* Chọn $m=10$.

  #h(-1cm)*Bước 2.* $7^1 equiv 7$; $7^2 equiv 9$; $7^3 equiv 3$; $7^4 equiv 1 space (mod 10)$; chu kì $k=4$.

  #h(-1cm)*Bước 3.* $2023 = 4 dot 505+3$, $r=3$.

  #h(-1cm)*Bước 4.* $7^2023 equiv 7^3 equiv 3 space (mod 10)$. Vậy chữ số tận cùng là $3$.
  ]
#v(0.4cm)
=== Bài tập tương tự

*Bài 1.* Tìm chữ số tận cùng của $3^2025$.

*Bài 2.* Tìm chữ số tận cùng của $7^2024 + 3^2025$.


*Bài 3.* Tìm ba chữ số tận cùng của $5^1994$.

 *Bài 4*. Tìm hai chữ số tận cùng của $6^2023$.

 *Bài 5*. Tìm hai chữ số tận cùng của $2^2024 dot 3^2024$

*Bài 6.* Chứng minh rằng tổng $A = 19^k + 5^k + 1995^k + 1996^k$ ($k$ chẵn) không là số chính phương.

#h(-1cm)
_HD:_ Tìm chữ số tận cùng của A bằng cách tìm chữ số tận cùng các các số thành phần.

*Bài 7.* Tìm hai chữ số tận cùng của $1978^(1986^8)$.

#v(0.3cm)
== Dạng 4: Giải phương trình nghiệm nguyên

=== Phương pháp
   + *Chọn mô-đun *$m$ thích hợp, thường căn cứ vào tập số dư có thể có của các luỹ thừa xuất hiện trong phương trình.
  + *Xác định* tập giá trị đồng dư có thể có của vế trái theo mô-đun $m$.
  + *Tính giá trị* đồng dư của vế phải theo mô-đun $m$.
  + *So sánh hai tập giá trị*: nếu giá trị vế phải không thuộc tập giá trị có thể có của vế trái thì phương trình vô nghiệm nguyên; nếu thuộc, xét thêm điều kiện để tìm nghiệm cụ thể.
#chuy[
  Số chính phương chia cho $4$ chỉ có số dư $0$ hoặc $1$; chia cho $8$ chỉ có số dư $0, 1$ hoặc $4$; chia cho $3$ chỉ có số dư $0$ hoặc $1$.
]

=== Ví dụ có hướng dẫn giải

#vidu("3.5", [
  Chứng minh rằng phương trình $x^2 + y^2 = 1999$ không có nghiệm nguyên.])

  #loigiai[
    Ta có $x^2 equiv 0$ hoặc $1 space (mod 4)$, $y^2 equiv 0$ hoặc $1 space (mod 4)$. 
    
    #h(-1cm)
    Do đó $x^2 + y^2 equiv 0, 1$ hoặc $2 space (mod 4)$. Nhưng $1999 equiv 3 space (mod 4)$.

    #h(-1cm) Vậy phương trình vô nghiệm.
  ]


=== Bài tập tương tự

*Bài 1.* Chứng minh phương trình $x^2 - y^2 = 1998$ không có nghiệm nguyên.

*Bài 2.* Tìm nghiệm nguyên của phương trình $x^2 + y^2 = 2x y + 4$.

*Bài 3.* Chứng minh rằng phương trình $x^3 + y^3 + z^3 = 2024$ không có nghiệm nguyên dương.


*Bài 4.* Tìm tất cả các số nguyên $n$ sao cho $n^2 + n + 1$ chia hết cho $7$.

*Bài 5.* Chứng minh rằng không tồn tại số nguyên $a$ thỏa mãn $(2024^2024 + 1)$ chia hết cho $(a^3 + 2025 a)$.

*Bài 6*. Chứng minh phương trình $x^3+y^3=2022$ không có nghiệm nguyên (gợi ý: xét mô-đun $9$


#v(0.4cm)
==  Dạng 5: Tìm điều kiện của biến để chia hết

=== Phương pháp

+ *Đặt phép chia* biểu thức $A$ cho biểu thức $B$, biến đổi để biểu diễn $A = B dot Q + R$.
+ *Sử dụng điều kiện* $B | A <=> B | R$ ($R$ là số dư trong phép chia đa thức).
+ *Giải phương trình ước số* từ điều kiện $B | R$.

=== Ví dụ có hướng dẫn giải

#vidu("3.7", [
  Tìm $n in ZZ$ để $A = n^3 + 2n^2 - 3n + 2$ chia hết cho
  
  #h(-1cm) $B = n^2 - n$.])

  #loigiai[

    #h(-1.5cm)
    Thực hiện phép chia: $n^3 + 2n^2 - 3n + 2 = (n^2 - n)(n + 3) + 2$. 
    
    #h(-1.5cm)Để $B | A <=> (n^2 - n) | 2$.

#h(-1cm)
    Do đó $n^2 - n in {plus.minus 1, plus.minus 2}$. 
    -  $n^2 - n - 1 = 0$ (vô nghiệm nguyên), 
    - $n^2 - n + 1 = 0$ (vô nghiệm nguyên),
    -  $n^2 - n - 2 = 0 => n = 2$ hoặc $n = -1$,
    -  $n^2 - n + 2 = 0$ (vô nghiệm nguyên).

    Vậy $n in {-1, 2}$.
  ]


=== Bài tập tương tự

*Bài 1.* Tìm $n in ZZ$ để $n^2 + 6n + 4$ chia hết cho $n + 7$.

*Bài 2.* Tìm $n in ZZ$ để $2n^3 - 3n^2 + n$ chia hết cho $2n - 1$.

*Bài 3.* Tìm $x, y in ZZ$ thỏa mãn $x^2 - x y - 3x - 2y = 7$.

*Bài 4.* Tìm $n in ZZ$ để $n^4 - 2n^3 + n^2 - 1$ chia hết cho $n^2 - n + 1$.

*Bài 5.* Chứng minh rằng không tồn tại số nguyên $n$ để $n^5 - n + 2$ chia hết cho $n^4 + n^2 + 1$.


#v(0.4cm)
==  Dạng 6: Chứng minh số chính phương và tính chất số học

=== Phương pháp

+ *Xét số dư* của số chính phương theo các môđun $3, 4, 8, 9$.
+ *Sử dụng tính chất:* Số chính phương chỉ có thể có tận cùng là $0, 1, 4, 5, 6, 9$.
+ *Chứng minh phản chứng:* Giả sử là số chính phương, suy ra mâu thuẫn về số dư.

#v(0.4cm)
=== Ví dụ có hướng dẫn giải

#vidu("3.8", [
 Chứng minh rằng số $A$ gồm $2023$ chữ số $1$ liên tiếp không phải là số chính phương.])

  #loigiai[
    
  #h(-1cm)*Bước 1.* Chọn $m=4$.

  #h(-1cm)*Bước 2.* Số chính phương chia $4$ chỉ dư $0$ hoặc $1$.

  #h(-1cm)*Bước 3.* Hai chữ số tận cùng của $A$ là "$11$" $=> A equiv 11 equiv 3 space (mod 4)$.

  #h(-1cm)*Bước 4.* Vì $3 in.not {0,1}$ nên $A$ không phải là số chính phương..
  ]

=== Bài tập tương tự

*Bài 1.* Chứng minh rằng $n^2 + n + 1$ không là số chính phương với mọi $n in NN$.

*Bài 2.* Cho ba số nguyên dương $a_1, a_2, a_3$ có tổng bằng $2025^2026$. Chứng minh rằng $a_1^3 + a_2^3 + a_3^3$ chia hết cho $3$.

*Bài 3*. Cho số $B$ khi chia cho $5$ dư $2$. Chứng minh rằng $B$ không thể là số chính phương

Chứng minh $A = a b c d$ là số chính phương.

*Bài 4.* Chứng minh rằng $n^5 - n$ chia hết cho $30$ với mọi $n in NN$.

_HD:_ Chứng minh chia hết cho $2, 3$ và $5$.

*Bài 5.* Chứng minh rằng tồn tại vô số số tự nhiên $n$ sao cho $n^2 + 1$ chia hết cho $2025$.

*Bài 6 *. Cho hai số nguyên dương $a, b$ thoả mãn $a+b+1$ là một ước nguyên tố của $2(a^2+b^2)-1$. Chứng minh rằng $a$ là một số chính phương

#v(0.4cm)
== Dạng 7: Ứng dụng định lý Fermat nhỏ và Euler

=== Phương pháp

+ *Kiểm tra điều kiện* :

Áp dụng: môđun là số nguyên tố (Fermat) hoặc
 $(a, m) = 1$ (Euler).
+ *Tính* $phi(m)$ nếu $m$ không phải số nguyên tố.
+ *Biến đổi* số mũ lớn về số mũ nhỏ hơn thông qua chu kỳ.

=== Ví dụ có hướng dẫn giải

#vidu("3.9", [
  Chứng minh rằng với mọi số nguyên $a$, $a^5 equiv a space (mod 30)$.])

  #loigiai[

    #h(-1.5cm)Theo Fermat nhỏ: $a^3 equiv a space (mod 3) => a^5 = a^3 dot a^2 equiv a dot a^2 equiv a space (mod 3)$.

    #h(-1cm)Tương tự, $a^5 equiv a space (mod 5)$ và $a^5 equiv a space (mod 2)$.

    #h(-1cm)Vì $2, 3, 5$ đôi một nguyên tố cùng nhau, $a^5 equiv a space (mod 2 dot 3 dot 5)$
    
   Hay $a^5 equiv a (mod 30)$ (đfcm).
  ]

#v(0.4cm)
=== Bài tập tương tự

*Bài 1.* Chứng minh rằng $a^7 equiv a space (mod 7)$ với mọi $a in ZZ$.

*Bài 2.* Chứng minh rằng với mọi số nguyên $a$ không chia hết cho $17$, ta có $a^16 equiv 1 space (mod 17)$.

*Bài 3.* Tìm số dư khi chia $3^2024$ cho $17$.

*Bài 4.* Chứng minh rằng $n^13 - n$ chia hết cho $2 dot 3 dot 5 dot 7 dot 13$ với mọi $n in ZZ$.

*Bài 5.* Cho $p$ là số nguyên tố. Chứng minh rằng $(p - 1)! + 1$ chia hết cho $p$.

#v(0.4cm)
== Bài toán tổng hợp và nâng cao

=== Phương pháp

Kết hợp nhiều kỹ thuật đồng dư, bao gồm:
- Sử dụng đồng dư kết hợp với nguyên lý Dirichlet.
- Kết hợp đồng dư với đa thức (nghiệm của đa thức mod $p$).
- Sử dụng đồng dư trong bài toán chứng minh tồn tại.

=== Ví dụ có hướng dẫn giải

#vidu("3.10", [
  Cho ba số nguyên dương $a_1, a_2, a_3$ có tổng bằng $2025^2026$. Chứng minh rằng $a_1^3 + a_2^3 + a_3^3$ chia hết cho $3$.])

  #loigiai[

    #h(-1cm)
    Với mọi số nguyên $a$, ta có $a^3 equiv a space (mod 3)$.

    #h(-1cm)Do đó: $a_1^3 + a_2^3 + a_3^3 equiv a_1 + a_2 + a_3 = 2025^2026 space (mod 3)$.

   #h(-1cm) Vì $2025 space  dots.v space 3$, nên $2025^2026 equiv 0 space (mod 3)$. 
   
   #h(-1cm)Vậy $a_1^3 + a_2^3 + a_3^3 equiv 0 space (mod 3)$.
  ]

#v(0.4cm)
=== Bài tập tương tự

*Bài 1.* Cho $p$ là số nguyên tố lẻ. Chứng minh rằng tồn tại vô số số nguyên $n$ sao cho $n^2 + n + 1$ chia hết cho $p$.

*Bài 2.* Cho $S = {a_1, a_2, dots, a_n}$ là tập các số nguyên. Chứng minh rằng tồn tại tập con khác rỗng $T subset.eq S$ sao cho tổng các phần tử của $T$ chia hết cho $n$.

*Bài 3.* Chứng minh rằng trong $2025$ số nguyên bất kỳ, tồn tại một tập con có tổng chia hết cho $2025$.

*Bài 4.* Cho $a, b$ là các số nguyên dương nguyên tố cùng nhau. Chứng minh rằng tồn tại vô số số nguyên $n$ sao cho $a^n + b^n$ chia hết cho $n$.

*Bài 5.* Chứng minh rằng phương trình $x^2 + y^2 + z^2 = 2024^n$ không có nghiệm nguyên dương với $n$ đủ lớn.

= NGÂN HÀNG CÂU HỎI TRÍCH XXUẤTTHEO TỪNG DẠNG BÀI
#align(center)[
*Dạng 1: Chứng minh chia hết *
]
+ *(HSG Toán 8, Diễn Thành – Nghệ An, 2025–2026)* Cho ba số nguyên dương $a_1, a_2, a_3$ có tổng bằng $2025^2026$. 

#h(-1cm)Chứng minh rằng $a_1^3 + a_2^3 + a_3^3$ chia hết cho $3$.

+ *(HSG Toán 8, Nga Thiện – Thanh Hóa, 2025–2026)* Chứng minh rằng $A = n^3 (n^2 - 7)^2 - 36 n$ chia hết cho $7$ với mọi $n in ZZ$.

+ *(HSG Toán 9, Gia Lai, 2019)* Chứng minh rằng với mọi số nguyên $n$, $A = 3^n + 15^n$ chia hết cho $18$.

+ *(HSG Toán 8, 2025–2026)* Chứng minh rằng $2^70 + 3^70$ chia hết cho $13$.
#v(0.4cm)
#align(center)[
* Dạng 2: Tìm số dư*
]
+ *(HSG Toán 9, 2024–2025)* Tìm số dư khi chia $2024^2025$ cho $19$.

+ *(HSG Toán 9, Hà Nam)* Tìm số dư khi chia $5^70 + 7^50$ cho $12$.

+ *(HSG Toán 8, 2024–2025)* Tìm số dư khi chia $3^2005 + 4^2005$ cho $11$.

#v(0.4cm)
#align(center)[
* Dạng 3: Tìm chữ số tận cùng*
]
+ *(HSG Toán 8)* Tìm chữ số tận cùng của $6^2006$, $7^2007$.

+ *(HSG Toán 8)* Chứng minh rằng tổng:

 $A = 19^k + 5^k + 1995^k + 1996^k$ ($k$ chẵn) không là số chính phương.

#v(0.4cm)
#align(center)[
*Dạng 4: Phương trình nghiệm nguyên*]

+ *(HSG Toán 8, Diễn Thành – Nghệ An, 2025–2026)* 

Tìm $x, y in ZZ$ thỏa mãn $x^2 - x y - 3x - 2y = 7$.

+ *(HSG Toán 9, Hải Châu – Nghệ An, 2025–2026)* Cho các số nguyên dương $a, b, c, d$ thỏa mãn $2018 a^3 + 2021 b^3 = c^3 + d^3$. Chứng minh rằng $a + b + c + d$ là hợp số.
#v(0.4cm)
#align(center)[
* Dạng 5: Tìm điều kiện chia hết*
]
+ *(HSG Toán 8)* Tìm $n in ZZ$ để $A = n^3 + 2n^2 - 3n + 2$ chia hết cho $B = n^2 - n$.

+ *(HSG Toán 9, Lê Ninh, 2018–2019)* Cho hai số nguyên, số thứ nhất chia cho $5$ dư $1$, số thứ hai chia cho $5$ dư $2$. Hỏi tổng bình phương của chúng có chia hết cho $5$ không?

#v(0.4cm)
#align(center)[
*Dạng 6: Số chính phương*
]
+ *(HSG Toán 8, Nga Thiện – Thanh Hóa, 2025–2026)* Cho các số $a, b, c, d$ nguyên dương đôi một khác nhau thỏa mãn điều kiện phức hợp. Chứng minh $A = a b c d$ là số chính phương.

+ *(HSG Toán 9, Hải Châu – Nghệ An, 2025–2026)* Số nhà của bác An là số tự nhiên có hai chữ số. Biết rằng bình phương của số nhà bằng lập phương của tổng các chữ số. Tìm số nhà.

#v(0.4cm)
#align(center)[
* Dạng 7: Fermat nhỏ và Euler*
]
+ *(HSG Toán 9, 2025–2026)* Chứng minh rằng không tồn tại số nguyên $a$ thỏa mãn $(2024^2024 + 1)$ chia hết cho $(a^3 + 2025 a)$.

#v(0.4cm)
#align(center)[
*Tổng hợp nâng cao*
]
+ *(HSG Toán 9, Hà Nội, 2025–2026)* Cho một bảng hình vuông

#h(-1cm) $5 times 5$, viết vào mỗi ô một trong các số $-1, 0, 1$ rồi tính tổng theo từng cột, từng dòng và từng đường chéo. Chứng minh rằng tồn tại hai tổng có giá trị bằng nhau.

+ *(HSG Toán 9, Hải Châu, 2025–2026)* Cho một đa giác đều có $2025$ đỉnh. Tô màu các đỉnh bằng một trong hai màu xanh hoặc đỏ. Chứng minh rằng luôn tồn tại một tam giác cân có ba đỉnh được tô cùng một màu.

#v(0.4cm)
= DỰ ĐOÁN XU HƯỚNG RA ĐỀ

==  Xu hướng chung

Dựa trên phân tích đề thi HSG Toán 8 và Toán 9 giai đoạn 2021–2026 từ các nguồn THCS.TOANMATH.COM, có thể nhận định các xu hướng sau:

*Xu hướng 1: Tăng cường tích hợp đồng dư với các mạch kiến thức khác.* Các bài toán đồng dư ngày càng được kết hợp với đa thức (tìm đa thức dư), hình học tổ hợp (tô màu, đếm), xác suất (chọn số ngẫu nhiên), và thực tiễn (bài toán tối ưu hóa, mã số).

*Xu hướng 2: Đề cao năng lực mô hình hóa và giải quyết vấn đề thực tiễn.* Các bài toán như “số nhà của bác An” hay bài toán xác suất chọn số ngẫu nhiên cho thấy xu hướng đưa đồng dư vào bối cảnh thực tế.

*Xu hướng 3: Tăng độ khó và yêu cầu tư duy bậc cao.* Các bài toán yêu cầu kết hợp nhiều kỹ thuật (Fermat nhỏ + CRT + Dirichlet) ngày càng phổ biến. Đặc biệt, dạng bài chứng minh tồn tại và chứng minh phản chứng được khai thác nhiều hơn.

*Xu hướng 4: Chú trọng tính chặt chẽ và lập luận logic.* Đề thi có xu hướng yêu cầu học sinh không chỉ đưa ra kết quả mà còn phải chứng minh tính đúng đắn của lập luận.

==  Dạng bài mới cần chú ý

+ *Đồng dư và đa thức:* Tìm đa thức dư, nghiệm của đa thức theo môđun nguyên tố.
+ *Đồng dư và tổ hợp:* Chứng minh tồn tại tập con có tổng chia hết, sử dụng nguyên lý Dirichlet kết hợp đồng dư.
+ *Đồng dư và hình học tổ hợp:* Bài toán tô màu, đếm cấu hình thỏa mãn điều kiện chia hết.
+ *Đồng dư và xác suất:* Tính xác suất của biến cố liên quan đến chia hết trong tập hợp số.
+ *Đồng dư và ứng dụng thực tiễn:* Mã ISBN, mã vạch, mật mã đơn giản.

== Định hướng dạy học phù hợp

Để đáp ứng các xu hướng trên, giáo viên cần:

+ *Xây dựng lộ trình dạy học theo bậc nhận thức:* Từ nhận biết định nghĩa → vận dụng tính chất → phân tích bài toán → tổng hợp và sáng tạo.
+ *Thiết kế bài tập phân hóa:* Mỗi dạng bài cần có ít nhất $3$ cấp độ: cơ bản, nâng cao và chuyên sâu.
+ *Tăng cường hoạt động khám phá:* Cho học sinh tự tìm quy luật, tự phát hiện chu kỳ đồng dư thay vì áp đặt công thức.
+ *Kết nối với thực tiễn:* Sử dụng các ví dụ thực tế (mã số, lịch, đồng hồ) để minh họa ứng dụng của đồng dư.
+ *Sử dụng công nghệ hỗ trợ:* Khuyến khích học sinh kiểm tra kết quả bằng máy tính cầm tay hoặc phần mềm toán học.

#pagebreak()

= KẾT LUẬN

Đề tài đã hệ thống hóa toàn bộ lý thuyết cơ bản và nâng cao về đồng dư thức, bao gồm định nghĩa, tính chất, các định lý quan trọng (Fermat nhỏ, Euler, CRT, Wilson). Đề tài đã phân dạng bài tập ứng dụng đồng dư thức thành $8$ dạng chính, mỗi dạng đều có phương pháp giải chi tiết, ví dụ minh họa có hướng dẫn và hệ thống bài tập tương tự được phân theo $3$ cấp độ nhận thức. Ngoài ra, đề tài đã trích xuất các câu hỏi từ đề thi HSG giai đoạn 2021–2026, phân loại theo từng dạng bài, và dự đoán các xu hướng ra đề trong thời gian tới.

Kết quả nghiên cứu cho thấy đồng dư thức là một công cụ mạnh mẽ và linh hoạt trong giải toán số học THCS, đặc biệt trong bối cảnh đề thi HSG ngày càng đòi hỏi tư duy bậc cao và khả năng tích hợp kiến thức. Việc dạy học đồng dư thức theo định hướng phát triển năng lực, với hệ thống bài tập phân hóa theo cấp độ nhận thức, sẽ giúp học sinh không chỉ nắm vững kiến thức mà còn phát triển được các năng lực tư duy cần thiết.


#pagebreak()

= TÀI LIỆU THAM KHẢO

#set enum(numbering: "[1]")

== Tài liệu tiếng Việt

+ *Vũ Hữu Bình* (2019), _9 chuyên đề Số học Trung học cơ sở: Dùng bồi dưỡng học sinh giỏi các lớp 6, 7, 8, 9. Giúp ôn thi vào lớp 10 chuyên Toán_, Tái bản lần thứ 2, NXB Giáo dục, Hà Nội, 108 tr.

+ *Vũ Hữu Bình* (ch.b.), Đàm Hiếu Chiến, Trần Hữu Nam, Phạm Thị Bạch Ngọc, Đàm Văn Nhỉ, Nguyễn Tam Sơn (2025), _Bồi dưỡng học sinh giỏi Toán – Đại số 8_, Tái bản lần thứ 1, NXB Giáo dục Việt Nam, Hà Nội, 232 tr.

+ *Vũ Hữu Bình* (ch.b.), Phạm Thị Bạch Ngọc, Đàm Văn Nhỉ (2025), _Bồi dưỡng học sinh giỏi Toán – Đại số, Thống kê, Xác suất 9_, Tái bản lần thứ 1, NXB Giáo dục Việt Nam, Hà Nội, 268 tr.

+ *Phan Huy Khải* (2009), _Các chuyên đề số học bồi dưỡng học sinh giỏi Toán trung học – Chuyên đề 5: Phương trình nghiệm nguyên_, Tái bản lần thứ 1, NXB Giáo dục, Hà Nội, 379 tr.

+ *Phan Huy Khải* (2006), _Các chuyên đề số học bồi dưỡng học sinh giỏi Toán trung học – Chuyên đề 2: Số học và dãy số_, NXB Giáo dục, Hà Nội.

+ *Phan Huy Khải* (2006), _Các chuyên đề số học bồi dưỡng học sinh giỏi Toán trung học – Chuyên đề 3: Các bài toán cơ bản của số học_, NXB Giáo dục, Hà Nội.

+ *Phan Huy Khải* (2006), _Các chuyên đề số học bồi dưỡng học sinh giỏi Toán trung học – Chuyên đề 4: Các bài toán về hàm số học_, NXB Giáo dục, Hà Nội.

+ *Tôn Thân* (ch.b.), Vũ Hữu Bình, Nguyễn Vũ Thanh, Bùi Văn Tuyên (2016), _Các dạng toán và phương pháp giải toán 8_, Tái bản lần thứ 10, NXB Giáo dục, Hà Nội, 251 tr.

+ *Dương Quốc Việt* (ch.b.), Đàm Văn Nhỉ (2025), _Cơ sở lí thuyết số và đa thức_, NXB Đại học Sư phạm, Hà Nội, 231 tr.

+ *Đàm Văn Nhỉ*, Lưu Bá Thắng, Nguyễn Việt Hải (2006), _Số học_, NXB Hải Phòng, 183 tr.

+ *Nguyễn Vũ Lương* (ch.b.), Nguyễn Lưu Sơn, Nguyễn Ngọc Thắng (2006), _Các bài giảng về số học – T.2: Đồng dư, phương trình nghiệm nguyên, hàm số học_, NXB Đại học Quốc gia Hà Nội.

+ *Thái Thị Nga* (2024), “Khai thác một số ứng dụng thực tiễn của đồng dư trong dạy học số học nhằm tạo hứng thú học tập cho sinh viên ngành Sư phạm Toán”, _Tạp chí Giáo dục và Xã hội_.

+ *Nguyễn Văn Trường* (2025), _Ứng dụng lí thuyết đồng dư để tìm dấu hiệu chia hết_, Đề án Thạc sĩ, Trường Đại học Hồng Đức, Thanh Hóa.

+ *Nguyễn Thị Thúy Hằng* (2025), _Các vấn đề cơ bản về đồng dư thức và ứng dụng trong giải toán sơ cấp_, Luận văn Thạc sĩ, Trường Đại học Sư phạm – Đại học Đà Nẵng.

+ *Nguyễn Quốc Bảo*, _Phân dạng và phương pháp giải toán số học và tổ hợp_, THCS.TOANMATH.COM.

+ *Nhóm tác giả HOC247* (2021), _Bồi dưỡng HSG chuyên đề Đồng dư_, HOC247.NET.

+ *Sở GD&ĐT các tỉnh/thành*, _Đề thi HSG Toán 8 và Toán 9_, giai đoạn 2021–2026, THCS.TOANMATH.COM.

+ *Bộ Giáo dục và Đào tạo*, _Chương trình Giáo dục phổ thông môn Toán_ (2018).

== Tài liệu tiếng nước ngoài

+ *Joseph H. Silverman* (2014), _A Friendly Introduction to Number Theory_, 4th Edition, Brown University.

+ *Titu Andreescu*, Gabriel Dospinescu, Oleg Mushkarov (2017), _Number Theory: Concepts and Problems_, XYZ Press.

+ *Gareth A. Jones*, Josephine M. Jones (1998), _Elementary Number Theory_, Springer.

+ *Kenneth H. Rosen* (2019), _Elementary Number Theory and Its Applications_, 6th Edition, Pearson.

+ *Z.-W. Sun*, “On two congruence conjectures involving Franel numbers”, _Proceedings of the Royal Society of Edinburgh Section A: Mathematics_, 2023.

// ============================================================
// PHỤ LỤC
// ============================================================
#pagebreak()
= PHỤ LỤC : 5 ĐỀ THI THỬ

== Đề thi thử HSG Toán 8 – Đề số 1

#align(center)[*Thời gian: 150 phút*]

#h(-1cm)*Câu 1 (4,0 điểm).*

a) Chứng minh rằng $A = n^3 (n^2 - 7)^2 - 36 n$ chia hết cho $7$ với mọi $n in ZZ$.

b) Cho $x^2 + 2x = 1$. Tính giá trị của biểu thức:

#align(center)[ $A = x^6 + 3x^5 + 3x^4 + 3x^3 + 2x^2 + 8x + 7$.]

#h(-1cm)*Câu 2 (4,0 điểm).*

a) Tìm $x, y in ZZ$ thỏa mãn $x^2 - x y - 3x - 2y = 7$.

b) Chứng minh rằng $2^70 + 3^70$ chia hết cho $13$.

#h(-1cm)*Câu 3 (4,0 điểm).*

a) Tìm số dư khi chia $2024^2025$ cho $19$.

b) Tìm chữ số tận cùng của $7^2024 + 3^2025$.

#h(-1cm)*Câu 4 (6,0 điểm).*
Cho hình chữ nhật $A B C D$ có $angle B D C = 30 degree$. Qua $C$ kẻ đường vuông góc với $B D$ cắt $B D$ ở $E$ và cắt phân giác của góc $A D B$ tại $M$.

a) Tính góc $C B M$.

b) Chứng minh tứ giác $A M B D$ là hình thang cân.

c) Gọi $N$ là hình chiếu của $M$ trên $D A$, $K$ là hình chiếu của $M$ trên $A B$. Chứng minh ba điểm $N, K, E$ thẳng hàng.

#h(-1cm)*Câu 5 (2,0 điểm).*
Cho các số dương $a, b, c$ thỏa mãn $a + b + c = 3$. Chứng minh rằng:
$ a/(1 + b^2) + b/(1 + c^2) + c/(1 + a^2) >= 3/2. $

== Đề thi thử HSG Toán 8 – Đề số 2

#align(center)[*Thời gian: 150 phút*]

#h(-1cm)*Câu 1 (4,0 điểm).*

a) Chứng minh rằng tổng $A = 19^k + 5^k + 1995^k + 1996^k$ ($k$ chẵn) không là số chính phương.

b) Cho ba số nguyên dương $a_1, a_2, a_3$ có tổng bằng $2025^2026$. Chứng minh rằng $a_1^3 + a_2^3 + a_3^3$ chia hết cho $3$.

#h(-1cm)*Câu 2 (4,0 điểm).*

a) Tìm $n in ZZ$ để $n^3 + 2n^2 - 3n + 2$ chia hết cho $n^2 - n$.

b) Tìm số dư khi chia $3^2005 + 4^2005$ cho $11$.

#h(-1cm)*Câu 3 (4,0 điểm).*

a) Chứng minh rằng $17^19 + 19^17$ chia hết cho $18$.

b) Tìm hai chữ số tận cùng của $7^2024$.

#h(-1cm)*Câu 4 (6,0 điểm).*
Cho tam giác nhọn $A B C$. Các đường cao $A D, B E, C F$ cắt nhau tại $H$.

a) Chứng minh $angle A E F = angle A B C$.

b) Chứng minh rằng điểm $H$ cách đều ba cạnh của tam giác $D E F$.

c) Cho $B$ và $C$ cố định, $A$ di chuyển sao cho góc $B A C$ không đổi. Chứng minh rằng khi $A$ di chuyển thì độ dài đoạn thẳng $E F$ không đổi.

#h(-1cm)*Câu 5 (2,0 điểm).*
Cho một bảng hình vuông $5 times 5$. Người ta viết vào mỗi ô một trong các số $-1, 0, 1$ rồi tính tổng theo từng cột, từng dòng và từng đường chéo. Chứng minh rằng trong tất cả các tổng đó luôn tồn tại hai tổng có giá trị bằng nhau.

== Đề thi thử HSG Toán 9 – Đề số 1

#align(center)[*Thời gian: 150 phút*]

#h(-1cm)*Câu 1 (2,5 điểm).*

a) Cho các số nguyên dương $a, b, c, d$ thỏa mãn:

#h(-1cm) $2018 a^3 + 2021 b^3 = c^3 + d^3$. Chứng minh rằng $a + b + c + d$ là hợp số.

b) Số nhà của bác An là một số tự nhiên có hai chữ số. Biết rằng bình phương của số nhà bằng lập phương của tổng các chữ số của số nhà. Tìm số nhà của bác An.

#h(-1cm)*Câu 2 (6,0 điểm).*

a) Giải phương trình: $(x - 7)(x - 5)(x - 4)(x - 2) = 72$.

b) Giải hệ phương trình: $x + y + x y = -1$ và $x^2 + y^2 - x y = 7$.

#h(-1cm)*Câu 3 (1,5 điểm).*
Bác Bình muốn làm một cái bể nuôi cá bằng kính có dạng hình hộp chữ nhật có đáy là hình vuông, thể tích $0,5 space "m"^3$. Tìm độ dài cạnh đáy và chiều cao của bể sao cho tổng diện tích các mặt bên và mặt đáy (không tính mặt nắp) nhỏ nhất.

#h(-1cm)*Câu 4 (2,0 điểm).*
Trong một hộp đựng kẹo giấy màu xanh lá, đỏ, trắng, vàng và xanh dương. Số kẹo giấy màu trắng gấp ba lần số kẹo giấy màu đỏ, số kẹo giấy màu vàng gấp đôi số kẹo giấy màu đỏ, số kẹo giấy màu xanh lá bằng số kẹo giấy màu xanh dương và bằng số kẹo giấy màu đỏ. Chọn ngẫu nhiên một chiếc kẹo giấy. Tính xác suất của biến cố $A$: “Chọn được chiếc kẹo giấy màu vàng hoặc màu đỏ”.

#h(-1cm)*Câu 5 (7,0 điểm).*
Cho tam giác nhọn $A B C$. Các đường cao $A D, B E, C F$ cắt nhau tại $H$.

a) Chứng minh $angle A E F = angle A B C$.

b) Chứng minh rằng điểm $H$ cách đều ba cạnh của tam giác $D E F$.

c) Cho $B$ và $C$ cố định, $A$ di chuyển sao cho góc $B A C$ không đổi. Chứng minh rằng khi $A$ di chuyển thì độ dài đoạn thẳng $E F$ không đổi.

#h(-1cm)*Câu 6 (1,0 điểm).*
Cho một đa giác đều có $2025$ đỉnh. Tô màu các đỉnh của đa giác bằng một trong hai màu xanh hoặc đỏ. Chứng minh rằng luôn tồn tại một tam giác cân có ba đỉnh được tô cùng một màu.

== Đề thi thử HSG Toán 9 – Đề số 2

#align(center)[*Thời gian: 150 phút*]

#h(-1cm)*Câu 1 (3,0 điểm).*

a) Tìm số dư khi chia $2024^2025$ cho $19$.

b) Chứng minh rằng không tồn tại số nguyên $a$ thỏa mãn:

#h(1cm) $(2024^2024 + 1)$ chia hết cho $(a^3 + 2025 a)$.

#h(-1cm)*Câu 2 (5,0 điểm).*

a) Giải phương trình: $x^2 + y^2 = 2 x y + 4$.

b) Cho $p$ là số nguyên tố lớn hơn $7$. Chứng minh rằng:

#h(1cm)$A = 3^p - 2^p - 1$ chia hết cho $42 p$.

#h(-1cm)*Câu 3 (3,0 điểm).*

a) Cho các số $a, b, c, d$ nguyên dương đôi một khác nhau thỏa mãn #align(center)[$(2a+b)/(a+b) + (2b+c)/(b+c) + (2c+d)/(c+d) + (2d+a)/(d+a) = 6$. ]

Chứng minh $A = a b c d$ là số chính phương.

b) Chứng minh rằng $n^5 - n$ chia hết cho $30$ với mọi $n in NN$.

#h(-1cm)*Câu 4 (6,0 điểm).*
Cho tam giác $A B C$ vuông tại $A$, đường cao $A H$. Gọi $D, E$ lần lượt là hình chiếu của $H$ trên $A B, A C$.

a) Chứng minh $A H^2 = B H dot C H$.
b) Chứng minh tứ giác $A D H E$ là hình chữ nhật.

c) Chứng minh $A D dot A B = A E dot A C$.

#h(-1cm)*Câu 5 (3,0 điểm).*
Chứng minh rằng với mọi số nguyên dương $n$, số

 $B = 5^(n+2) + 26 dot 5^n + 8^(2n+1)$ chia hết cho $59$.

== Đề thi thử HSG Toán 9 – Đề số 3

#align(center)[*Thời gian: 150 phút*]

#h(-1cm)*Câu 1 (3,0 điểm).*

a) Chứng minh rằng $2^2024 - 1$ chia hết cho $2023$.

b) Tìm số tự nhiên $x$ nhỏ nhất thỏa mãn:

 $x equiv 2 space (mod 3)$, $x equiv 3 space (mod 5)$, $x equiv 2 space (mod 7)$.

#h(-1cm)*Câu 2 (4,0 điểm).*

a) Tìm nghiệm nguyên của phương trình $x^3 + y^3 + z^3 = 2024$.

b) Tìm $n in ZZ$ để $2n^3 - 3n^2 + n$ chia hết cho $2n - 1$.

#h(-1cm)*Câu 3 (4,0 điểm).*

a) Cho $p$ là số nguyên tố lẻ. Chứng minh rằng tồn tại vô số số nguyên $n$ sao cho $n^2 + n + 1$ chia hết cho $p$.

b) Chứng minh rằng trong $2025$ số nguyên bất kỳ, tồn tại một tập con có tổng chia hết cho $2025$.

#h(-1cm)*Câu 4 (5,0 điểm).*
Cho đường tròn $(O; R)$ và điểm $A$ nằm ngoài đường tròn. Từ $A$ kẻ hai tiếp tuyến $A B, A C$ ($B, C$ là tiếp điểm). Gọi $H$ là giao điểm của $O A$ và $B C$.

a) Chứng minh $O A perp B C$ tại $H$.

b) Chứng minh $A B^2 = A H dot A O$.

c) Chứng minh tứ giác $A B O C$ nội tiếp.

#h(-1cm)*Câu 5 (4,0 điểm).*
Chứng minh rằng phương trình:

 $x^2 + y^2 + z^2 = 2024^n$ không có nghiệm nguyên dương với $n$ đủ lớn.

#align(center)[
  #v(1cm)
  *_Hết_*
]