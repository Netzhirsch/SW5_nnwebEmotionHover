{block name="widgets_emotion_components_nnweb_emotion_hover"}
	
	{if $Data.nnwebEmotionHover_button_link_produkt_id}
		{$link = {url controller="detail" sArticle=$Data.nnwebEmotionHover_button_link_artikel}}
	{else}
		{$link = $Data.nnwebEmotionHover_button_link}
	{/if}
	
	<{if $Data.nnwebEmotionHover_button_link_element eq 'button'}div{else}a
		href="{$link}"
		target="{$Data.nnwebEmotionHover_button_link_target}"
	{/if}
		class="nnweb_emotion_hover {$Data.nnwebEmotionHover_style}"
		style="
			background-image:url('{$Data.nnwebEmotionHover_hintergrundbild}');
			background-position:{$Data.nnwebEmotionHover_hintergrundposition};">
		
		<div class="helper"></div>
		
		<div class="wrapper">
			
			{if $Data.nnwebEmotionHover_ueberschrift_anzeigen}
				<{$Data.nnwebEmotionHover_ueberschrift_tag}
					class="headline {$Data.nnwebEmotionHover_ueberschrift_cls}"
					style="
						color:{$Data.nnwebEmotionHover_ueberschrift_schriftfarbe};
						font-size:{$Data.nnwebEmotionHover_ueberschrift_schriftgroesse};
						background:{$Data.nnwebEmotionHover_ueberschrift_hintergrundfarbe};">
					{$Data.nnwebEmotionHover_ueberschrift_text}
				</{$Data.nnwebEmotionHover_ueberschrift_tag}>
			{/if}
			
			{if $Data.nnwebEmotionHover_text_anzeigen}
				<p
					class="{$Data.nnwebEmotionHover_text_cls}"
					style="
						color:{$Data.nnwebEmotionHover_text_schriftfarbe};
						font-size:{$Data.nnwebEmotionHover_text_schriftgroesse};
						background:{$Data.nnwebEmotionHover_text_hintergrundfarbe};">
					{$Data.nnwebEmotionHover_text_text}
				</p>
			{/if}
			
			{if $Data.nnwebEmotionHover_button_anzeigen}
					<{if $Data.nnwebEmotionHover_button_link_element ne 'button'}span{else}a
						href="{$link}"
						target="{$Data.nnwebEmotionHover_button_link_target}"
					{/if}
					class="btn {$Data.nnwebEmotionHover_button_cls}"
					href="{$link}"
					target="{$Data.nnwebEmotionHover_button_link_target}"
					style="
						color:{$Data.nnwebEmotionHover_button_schriftfarbe};
						font-size:{$Data.nnwebEmotionHover_button_schriftgroesse};
						background:{$Data.nnwebEmotionHover_button_hintergrundfarbe};">
					<span>{$Data.nnwebEmotionHover_button_text}</span>
				
				{if $Data.nnwebEmotionHover_button_link_element ne 'button'}
				</div>
				{else}
				</a>
				{/if}
			{/if}
		</div>
	{if $Data.nnwebEmotionHover_button_link_element eq 'button'}
	</div>
	{else}
	</a>
	{/if}
{/block}