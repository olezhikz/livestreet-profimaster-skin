{**
 * Последняя активность
 *}

{component_define_params params=[ 'content' ]}

{* Подвал *}
{capture 'block_footer'}
    <a href="{router page='rss'}allcomments/">{lang 'activity.block_recent.feed'}</a>
{/capture}

{component 'block'
    mods     = 'activity-recent'
    classes  = 'js-block-default js-activity-block-recent'
    title    = {lang 'activity.block_recent.title'}
    titleUrl = {router page='stream'}
    footer   = $smarty.capture.block_footer
    tabs     = [
        'classes' => 'js-tabs-block js-activity-block-recent-tabs',
        'tabs' => [
            [ 'text' => {lang 'activity.block_recent.comments'}, 'url' => "{router page='ajax'}stream/comment", 'list' => $content ],
            [ 'text' => {lang 'activity.block_recent.topics'},   'url' => "{router page='ajax'}stream/topic" ]
        ]
    ]}