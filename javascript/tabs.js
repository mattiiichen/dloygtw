$(function(){
		// �w�]��ܲĤ@�� Tab
		var _showTab = 0;
		$('.abgne_tab').each(function(){
			// �ثe�����Ұ϶�
			var $tab = $(this);

			var $defaultLi = $('ul.tabs li', $tab).eq(_showTab).addClass('active');
			/*alert(JSON.stringify($defaultLi, null, 4));*/
	
			$($defaultLi.find('a').attr('href')).siblings().hide();
		
			// �� li ���ҳQ�I����...
			// �Y�n�令�ƹ����� li ���ҴN������, �� click �令 mouseover
			$('ul.tabs li', $tab).click(function() {
				// ��X li �����W�s�� href(#id)
				var $this = $(this),
					_clickTab = $this.find('a').attr('href');
				// ��ثe�I���쪺 li ���ҥ[�W .active
				// �ç�S�̤������� .active �������� class
				$this.addClass('active').siblings('.active').removeClass('active');
				// �H�J�۹��������e�����åS�̤���
				$(_clickTab).stop(false, true).fadeIn().siblings().hide();

				return false;
			}).find('a').focus(function(){
				this.blur();
			});
		});
	});