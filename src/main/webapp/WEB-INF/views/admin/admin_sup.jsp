<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<link rel="stylesheet"  href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<script src="${pageContext.request.contextPath}/resources/chart/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/chart/code/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/chart/code/modules/export-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/chart/code/modules/accessibility.js"></script>
<script type="text/javascript">
	var CTX = '${pageContext.request.contextPath}';
	$(document).ready(function() {	
		var chartOptions = {
			    chart: {
			        type: 'bar', //'column',
			        renderTo: 'stat_plot'
			    },
			    title: {
			        text: '후원처 별 누적 후원 내역 통계'
			    },
			    subtitle: {
			        text: '한부모 가정, 미혼모 시설, 법인재단 (%)'
			    },
			    xAxis: {
			        crosshair: true
			    },
			    yAxis: {
			        min: 0,
			        title: {
			            text: '(%)'
			        }
			    },
			    tooltip: {
			        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			            '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
			        footerFormat: '</table>',
			        shared: true,
			        useHTML: true
			    },
			    plotOptions: {
			        column: {
			            pointPadding: 0.2,
			            borderWidth: 0,
			            dataLabels: {
			            	enabled: true
			            },
			            enableMouseTracking: true
			        },
			        bar: {
			        	dataLabels: {
			            	enabled: true
			            },
			            enableMouseTracking: true
			        },
			        line: {
			        	dataLabels: {
			            	enabled: true
			            },
			            enableMouseTracking: true
			        }			    
			    },
			    series: [{
			        name: '한부모 가정',
			        data: [${Lnum1}],
			        color: '#ffc107'
			
			    }, {
			        name: '미혼모 시설',
			        data: [${Lnum2}],
			        color: '#28a745'
			
			    }, {
			        name: '법인재단',
			        data: [${Lnum3}],
			        color: '#0dcaf0'			
			    }],
			    credits: false
			};
		//Highcharts.chart('stat_plot', chartOptions);
		var myChart = new Highcharts.chart(chartOptions); //차트 객체
		
		
		// stat 1
		$('#asStatPerArticle').on("click", function() {
			var urlStat1 = CTX + "/admin/stat_as_count.my";
			$.ajax({
				type: 'post', 
				data: "dummy=123",
				url: urlStat1,
				dataType: 'json', // 서버 응답 타입
				//dataType: 'text', // 서버 응답 타입
				//beforeSend: 
				success: function(res, status, xhr) {
					//alert(res); // JSON.parse() 필요없네.
					console.log(res);
					//
					myChart.xAxis[0].setCategories(res.atTitleData, true);
					//
					var asCnt = res.asCntData;
					myChart.series[0].setData(asCnt,true);
					myChart.series[1].setData(res.asSumData,true);
					myChart.series[2].setData(res.asAvgData,true);
				},
				error: function(xhr,status) {
					console.log(xhr);
					console.log(xhr.status);
					console.log(status);
				} 
// 				done:
// 			 	complete:
			});
		});
	});
</script>	

<body>
   <%@ include file="../common/_header.jsp"%>
   <form action="admin_sup.woo">
      <input type="hidden" name="mbId" value="${mbPKId}">
      <main class="childcare_main admin">
         <div class="childcare_box admin ma">
            <div class="side_bar ad">
               <ul>
                 	<li class="side_bar_content mypage"><a  href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a></li>
                 	<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/admin_cen.woo?">시설 통계</a></li>
                 	<li class="side_bar_content mypage"><a  href="${pageContext.request.contextPath}/admin_boa.woo?">게시글 통계</a></li>
                 	<li class="side_bar_content mypage on"><a  href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a></li>
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>후원 통계</h2>
                  </div>
                  <div class="childcare_content my">
                     <div class="table-wrap">
                        <table class="tables myaccordion table-hover" id="accordion">
                              <% int i = 1; %>
                           <thead>
                              <tr>
                                 <th>NO.</th>
                                 <th>결제 방법</th>
                                 <th>후원처</th>
                                 <th>후원금액</th>
                                 <th>후원 날짜</th>
                                 <th>회원 ID</th>
                              </tr>
                           </thead>
                           <tbody>
								<c:if test="${not empty SpList}">
								<c:forEach var="sp" items="${SpList}" varStatus="vs">
                              <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
                                 <th scope="row"><%= i++ %></th>
                                 <td>무통장입금</td>
                                 <td><c:if test="${sp.supportCenterType eq 1}">한부모 가정</c:if>
                                 <c:if test="${sp.supportCenterType eq 2}">미혼모 시설</c:if>
                                 <c:if test="${sp.supportCenterType eq 3}">법인 재단</c:if></td>
                                 <td><c:out value="${sp.price}"/>원</td>
                                 <td><fmt:formatDate value="${sp.supportDate}" pattern="yyyy년 MM월 dd일"/></td>
                                 <td>회원아이디명</td>
                              </tr>
                              </c:forEach>
                              </c:if>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </section>
            </div>
            <br>
            <br>
				<div id="stat_result">
					<figure class="highcharts-figure">
						<div id="stat_plot"></div>
					</figure>
					<br>
				</div>
			</div>
      </main>
   </form>
   <%@ include file="../common/_script.jsp"%>
</body>
</html>