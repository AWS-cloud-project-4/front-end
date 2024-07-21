function updateDistricts() {
    const regionSelect = document.getElementById('region-select');
    const districtSelect = document.getElementById('district-select');

    if (regionSelect.value === "서울") {
        fetch('static/positions.json') // json 파일에서 가져오기
            .then(response => response.json())
            .then(data => {
                const seoulDistricts = data.map(item => item.title);
                districtSelect.innerHTML = seoulDistricts.map(district => `<option value="${district}">${district}</option>`).join('');
                districtSelect.disabled = false;
                // 서울특별시를 선택할 때는 지도와 정보 숨김
                document.getElementById('map').style.display = 'none';
                document.getElementById('info').style.display = 'none';
            })
            .catch(error => {
                console.error('Error fetching locations:', error);
                districtSelect.innerHTML = '<option value="">데이터를 불러오는 데 문제가 발생했습니다</option>';
                districtSelect.disabled = true;
                document.getElementById('map').style.display = 'none';
                document.getElementById('info').style.display = 'none';
            });
    } else {
        districtSelect.innerHTML = '<option value="">서울을 먼저 선택하세요</option>';
        districtSelect.disabled = true;
        document.getElementById('map').style.display = 'none';
        document.getElementById('info').style.display = 'none';
    }
}
