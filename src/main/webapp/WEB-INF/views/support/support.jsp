<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<!-- <link href="../css/support.css" rel="stylesheet"> -->
<style>

</style>
<script type="text/javascript">
	function handleOnChange(e) {
		// 선택된 데이터 가져오기
		const value = e.value;

		// 데이터 출력
		document.getElementById('information_0').innerText = value;
	}

	function showindividual() {
		var individual = document.getElementById("sponsor_individual");
		var corporation = document.getElementById("sponsor_corporation");
		corporation.style.visibility = "hide";
		individual.style.visibility = "show";
	}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support.woo">
	<div class="one_box">
		<div class="support_view_first_box">
			<div class="support_view_sponsor_title">
				<b>후원처 선택하기</b>
			</div>
			<div class="support_view_sponsor_box">
				<div class="support_view_sponsor_image">
					<input type="image" src="${path}/resources/img/main2.png">
				</div>
			</div>
			<div class="support_view_sponsor_select_combo">
				<select class="select_combo" id="select_combo"
					onchange="handleOnChange(this)">
					<option
						value="재단법인은 사람이 본체인 사단법인과는 다르게 재산이 법인의 본체이다. 돈에 인격을 부여하는 자본주의의 극한 따라서 사원 및 사원총회는 없으며 이사와 감사만 있다. 영리 및 비영리가 모두 있는 사단법인[1]과는 다르게 재단법인은 모두 비영리이다. 수익을 배당받을 사원(직원이 아니라주식회사의 주주같은 개념이다.)이 없기 때문이다. 물론 재단법인도 수익사업을 할 수 있는데, 법인세 부과 대상사업과 비과세 대상 사업이 있다. 연구, 개발, 교육, 사회복지사업의 경우는 비과세 사업으로 정관에 따라 수익사업을해야 하며, 정관과 다르면 개정하여 주무관청의 승인을 얻은 후 진행해야 하는데 그렇지 않으면 설립허가가 취소된다."
						id="op1">법인재단</option>
					<option
						value="경제적으로 취약한 미혼모·부가 아이와 함께 행복한 가정을만들어 갈 수 있도록 생활비, 치료비 등을 지원합니다.홀로 출산을 준비하는 미혼모 가정에 생필품, 화장품, 아기용품,손편지 등을 키트로 구성하여 지원합니다.아이의 양육과 경제적인 부담을 혼자 감당하고 있는 미혼모 가정에의류, 전자제품, 생필품 등을 지원합니다.미혼모·부가 경제적, 정서적으로 안정을 찾고 독립할 수 있도록자격증 교육 등 자립교육을 지원합니다."
						id="op2">미혼모 시설</option>
					<option
						value="저소득층 아동·청소년에게 복지, 교육, 건강 3대 서비스를 맞춤형으로 제공합니다. 또한 아동·청소년-가족-지역사회까지 함께합니다.위스타트는 국내 최초로 통합사례관리 모델을 개발하였으며, 이 모델은 보건복지부의 ‘드림스타트’ 사업으로 발전했습니다."
						id="op3">아동기관 센터</option>
					<option
						value="갈수록 늘어나는 이혼율, 사망률, 미혼모 등으로 인해 우리는 주위에서 한부모 가정을 자주 접할 수 있습니다.그중 취약계층 한부모 가정의 아이들은 정서적, 신체적으로 정상적인 보살핌을 받기 어려운 상황입니다.라이프오브더칠드런은 한부모 가정이 마주한 문제를 스스로 해결할 수 있도록 지지해주고 이들의 부족한 부분을 채워 건강한 삶을 살도록 돕습니다."
						id="op4">한부모 가정</option>
				</select>
			</div>
			<div class="support_view_sponsor_Information">
				<div class="Information_box">
					<p id="information_0">재단법인은 사람이 본체인 사단법인과는 다르게 재산이 법인의 본체이다. 돈에
						인격을 부여하는 자본주의의 극한 따라서 사원 및 사원총회는 없으며 이사와 감사만 있다. 영리 및 비영리가 모두 있는
						사단법인[1]과는 다르게 재단법인은 모두 비영리이다. 수익을 배당받을 사원(직원이 아니라 주식회사의 주주같은
						개념이다.)이 없기 때문이다. 물론 재단법인도 수익사업을 할 수 있는데, 법인세 부과 대상 사업과 비과세 대상 사업이
						있다. 연구, 개발, 교육, 사회복지사업의 경우는 비과세 사업으로 정관에 따라 수익사업을 해야 하며, 정관과 다르면
						개정하여 주무관청의 승인을 얻은 후 진행해야 하는데 그렇지 않으면 설립허가가 취소된다.</p>
				</div>
			</div>
			<div class="support_imformation_view">
				<div class="support_imformation_view_title">
					<h4>후원자 정보 입력 하기</h4>
				</div>
				<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
				<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
				<script type="text/javascript">
                    $(document).ready(function(){
                        $('#selectBox').change(function(){
                            var result = $('#selectBox option:selected').val();
                            if( result == 'option2'){
                                $('.bs_1').show();
                                $('.hide_1').hide();
                            }else{
                                $('.bs_1').hide();
                                $('.hide_1').show();
                            }
                        });
                    });            
                </script>
				<div class="support_imformation_view_table">
					<table class="support_imformation_view_table_first">
						<tr>
							<th>후원인 구분</th>
							<td>
								<div class="sponsor_imformation_td">
									<select class="inputtxt sel" id="selectBox" onclick="Change()">
										<option value="option1" selected="selected">개인</option>
										<option value="option2">법인</option>
									</select>
								</div>
							</td>
						</tr>
						<tr class="hide_1">
							<th>성명</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text" maxlength="20" size="20">
								</div>
							</td>
						</tr>
						<tr class="bs_1">
							<th>법인명</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text" maxlength="20" size="20">
								</div>
							</td>
						</tr>
						<tr class="hide_1">
							<th>주민등록번호</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text" maxlength="6"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" required>
									- <input type="password" maxlength="7"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" required>
								</div>
							</td>
						</tr>
						<tr class="bs_1">
							<th>사업자등록번호</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="3"> - <input type="text"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="2"> - <input type="text"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="5">
								</div>
							</td>
						</tr>
						<tr class="hide_1">
							<th>생년월일</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="date">
								</div>
							</td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text"
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="3"> - <input type="text" 
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="4"> - <input type="text" 
										onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										maxlength="4">
								</div>
							</td>
						</tr>
						<tr class="hide_1">
							<th>이메일</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text"> @ <input type="text"
										value="naver.com">
								</div>
							</td>
						</tr>
						<tr class="bs_1">
							<th>대표자 이름</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text" maxlength="20" size="20">
								</div>
							</td>
						</tr>
						<tr class="bs_1">
							<th>대표자 이메일</th>
							<td>
								<div class="sponsor_imformation_td">
									<input type="text"> @ <input type="text"
										value="naver.com">
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="agreement_first_view">
				<div class="agreement_view_title">
					<h4>약관 및 개인정보 수집 이용 동의</h4>
				</div>
				<div class="agreement_view_contents">
					<div class="agreement_view_agree">
						<label for="agree_all" class="all_agree"> <input
							type="checkbox" name="agree_all" id="agree_all"> <span
							class="checked_all_agree">모두 동의합니다</span>
						</label>

						<dr> <script>
                // 동의 모두선택 / 해제
                const agreeChkAll = document.querySelector('input[name=agree_all]');
                agreeChkAll.addEventListener('change', (e) => {
                    let agreeChk = document.querySelectorAll('input[name=agree]');
                    for (let i = 0; i < agreeChk.length; i++) {
                        agreeChk[i].checked = e.target.checked;
                    }
                });
            </script>
						<ul class="agreement_list">
							<li class="agreement_box">
								<div class="one_ch">
									<label for="agree" class="required"> <input
										type="checkbox" name="agree" value="1" required> <span>이용약관
											동의<strong>(필수)</strong>
									</span>
									</label>
								</div>
								<div class="one_agree">여러분을 환영합니다. 울타리 서비스 및 제품(이하
									‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 울타리 서비스의 이용과 관련하여 울타리 서비스를
									제공하는 울타리 주식회사(이하 ‘울타리’)와 이를 이용하는 울타리 서비스 회원(이하 ‘회원’) 또는 비회원과의
									관계를 설명하며, 아울러 여러분의 울타리 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
									울타리 서비스를 이용하시거나 울타리 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을
									확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</div>
							</li>

							<li class="agreement_box">
								<div class="one_ch">
									<label for="agree" class="required"> <input
										type="checkbox" name="agree" value="1" required> <span>개인정보
											수집 및 이용 동의<strong>(필수)</strong>
									</span>
									</label>
								</div>
								<div class="one_agree">개인정보보호법에 따라 울타리 회원가입 신청하시는 분께
									수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부
									시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는 개인정보 이용자는
									회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다.
									이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우,
									네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</div>
							</li>
						</ul>
						</dr>
					</div>
				</div>
			</div>
			<div class="result_next_btn">
				<a href="donate_type.jsp"><button>다음</button></a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button>취소</button>
			</div>
		</div>
	</div>
	</form>
</body>
</html>