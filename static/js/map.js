function showMapAndInfo() {
    const regionSelect = document.getElementById('region-select');
    const districtSelect = document.getElementById('district-select');
    const map = document.getElementById('map');
    const info = document.getElementById('info');

    if (regionSelect.value === "서울" && districtSelect.value) {
        map.style.display = 'block';
        info.style.display = 'block';

        // 지도 초기화
        var mapContainer = document.getElementById('map');
        var mapOption = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표 (서울시청 기준)
            level: 10 // 지도의 확대 레벨
        };

        var mapInstance = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // JSON 파일을 fetch로 불러옵니다.
        fetch('static/positions.json')
            .then(response => response.json())
            .then(data => {
                // 불러온 데이터로 positions 배열 생성
                const positions = data.map(item => ({
                    title: item.title,
                    latlng: new kakao.maps.LatLng(item.lat, item.lng)
                }));

                // 선택한 구에 해당하는 데이터 찾기
                const selectedDistrict = positions.find(position => position.title === districtSelect.value);

                // 지도 중심좌표 및 확대 레벨 설정
                if (selectedDistrict) {
                    mapInstance.setCenter(selectedDistrict.latlng);
                    mapInstance.setLevel(5); // 확대 레벨을 더 크게 설정
                    info.textContent = selectedDistrict.title + '의 모기 활동 지수 : ';
                }

                // 마커 이미지의 이미지 주소입니다
                var imageSrc = "static/img/marker.png";

                // positions 배열을 순회하며 마커를 생성하고 지도에 표시합니다
                positions.forEach(position => {
                    var imageSize = new kakao.maps.Size(28, 35); // 마커 이미지의 크기
                    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); // 마커 이미지 생성

                    var marker = new kakao.maps.Marker({
                        map: mapInstance,
                        position: position.latlng,
                        title: position.title,
                        image: markerImage
                    });

                    // 마커 클릭 이벤트를 추가합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                        document.getElementById('info').textContent = position.title + '의 모기 활동 지수 : ';
                    });
                });
            })
            .catch(error => console.error('Error fetching positions:', error));
    } else {
        map.style.display = 'none';
        info.style.display = 'none';
    }
}

document.getElementById('district-select').addEventListener('change', showMapAndInfo);
