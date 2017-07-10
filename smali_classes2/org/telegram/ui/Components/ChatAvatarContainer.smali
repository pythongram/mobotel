.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "ChatAvatarContainer.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private onlineCount:I

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

.field private recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

.field private sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p3, "needTime"    # Z

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 54
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 56
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 60
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 61
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "actionBarDefaultTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v4, 0x3fa66666

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "actionBarDefaultSubtitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 72
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 74
    if-eqz p3, :cond_cb

    .line 75
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_cb
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 114
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v1, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    .line 115
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    if-eqz v0, :cond_115

    move v1, v2

    :goto_e5
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;->setIsChat(Z)V

    .line 116
    new-instance v1, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    .line 117
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    if-eqz v0, :cond_117

    move v1, v2

    :goto_f4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;->setIsChat(Z)V

    .line 118
    new-instance v1, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    if-eqz v0, :cond_119

    move v1, v2

    :goto_103
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SendingFileDrawable;->setIsChat(Z)V

    .line 120
    new-instance v1, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    if-eqz v0, :cond_11b

    :goto_111
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->setIsChat(Z)V

    .line 122
    return-void

    :cond_115
    move v1, v3

    .line 115
    goto :goto_e5

    :cond_117
    move v1, v3

    .line 117
    goto :goto_f4

    :cond_119
    move v1, v3

    .line 119
    goto :goto_103

    :cond_11b
    move v2, v3

    .line 121
    goto :goto_111
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setTypingAnimation(Z)V
    .registers 8
    .param p1, "start"    # Z

    .prologue
    .line 197
    if-eqz p1, :cond_a8

    .line 199
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 200
    .local v1, "type":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3a

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->start()V

    .line 203
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 205
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    .line 235
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_39
    :goto_39
    return-void

    .line 206
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->start()V

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 210
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5d

    goto :goto_39

    .line 225
    .end local v1    # "type":Ljava/lang/Integer;
    :catch_5d
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_39

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_62
    :try_start_62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    .line 213
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->start()V

    .line 215
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto :goto_39

    .line 218
    :cond_85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_39

    .line 219
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->start()V

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 222
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_a7} :catch_5d

    goto :goto_39

    .line 229
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto/16 :goto_39
.end method


# virtual methods
.method public checkAndUpdateAvatar()V
    .registers 7

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 316
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 317
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v2, :cond_2a

    .line 318
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_17

    .line 319
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 321
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 328
    :cond_1c
    :goto_1c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v3, :cond_29

    .line 329
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "50_50"

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_29
    return-void

    .line 322
    :cond_2a
    if-eqz v0, :cond_1c

    .line 323
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_34

    .line 324
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 326
    :cond_34
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_1c
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideTimeItem()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 161
    :goto_4
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v5, 0x42280000    # 42.0f

    const v7, 0x3fa66666

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v8, 0x42780000    # 62.0f

    .line 139
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    .line 140
    .local v0, "actionBarHeight":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v3, v2, 0x2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_a1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1d
    add-int v1, v3, v2

    .line 141
    .local v1, "viewTop":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->layout(IIII)V

    .line 142
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_7b

    .line 144
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42440000    # 49.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 146
    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 147
    return-void

    .line 140
    .end local v1    # "viewTop":I
    :cond_a1
    const/4 v2, 0x0

    goto/16 :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v7, 0x42080000    # 34.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 127
    .local v1, "width":I
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 128
    .local v0, "availableWidth":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->measure(II)V

    .line 129
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 130
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 131
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_68

    .line 132
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 134
    :cond_68
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setMeasuredDimension(II)V

    .line 135
    return-void
.end method

.method public setTime(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_5

    .line 168
    :goto_4
    return-void

    .line 167
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    goto :goto_4
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setTitleIcons(II)V
    .registers 4
    .param p1, "leftIcon"    # I
    .param p2, "rightIcon"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    .line 173
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "leftIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rightIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method public showTimeItem()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 154
    :goto_4
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public updateOnlineCount()V
    .registers 8

    .prologue
    .line 334
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 335
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    .line 336
    .local v2, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-nez v2, :cond_c

    .line 349
    :cond_b
    return-void

    .line 339
    :cond_c
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 340
    .local v1, "currentTime":I
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_26

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_b

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_b

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_b

    .line 341
    :cond_26
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 342
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 343
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 344
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_6b

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_6b

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_5d

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_6b

    :cond_5d
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_6b

    .line 345
    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 341
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public updateSubtitle()V
    .registers 19

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 239
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 240
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 241
    .local v7, "printString":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3e

    .line 242
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "..."

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-static {v7, v12, v13}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 244
    :cond_3e
    if-eqz v7, :cond_50

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_50

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_204

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_204

    .line 245
    :cond_50
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 246
    if-eqz v2, :cond_1be

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    .line 248
    .local v4, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_13a

    .line 249
    if-eqz v4, :cond_f0

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_f0

    .line 250
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_be

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v13, 0xc8

    if-gt v12, v13, :cond_be

    .line 251
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_ae

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_ae

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Members"

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_ad
    :goto_ad
    return-void

    .line 254
    .restart local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "Members"

    iget v14, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ad

    .line 257
    :cond_be
    const/4 v12, 0x1

    new-array v8, v12, [I

    .line 258
    .local v8, "result":[I
    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v12, v8}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "shortNumber":Ljava/lang/String;
    const-string v12, "Members"

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v8, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ad

    .line 263
    .end local v8    # "result":[I
    .end local v9    # "shortNumber":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    :cond_f0
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_109

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "Loading"

    const v14, 0x7f0702eb

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ad

    .line 266
    :cond_109
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_124

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "ChannelPublic"

    const v14, 0x7f070150

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ad

    .line 269
    :cond_124
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "ChannelPrivate"

    const v14, 0x7f07014d

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 274
    :cond_13a
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_152

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "YouWereKicked"

    const v14, 0x7f0705c1

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 276
    :cond_152
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_16a

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "YouLeft"

    const v14, 0x7f0705c0

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 279
    :cond_16a
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 280
    .local v3, "count":I
    if-eqz v4, :cond_17a

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v12, :cond_17a

    .line 281
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 283
    :cond_17a
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_1af

    if-eqz v3, :cond_1af

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Members"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 286
    :cond_1af
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v13, "Members"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 290
    .end local v3    # "count":I
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1be
    if-eqz v11, :cond_ad

    .line 291
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 292
    .local v6, "newUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_1d1

    .line 293
    move-object v11, v6

    .line 298
    :cond_1d1
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0x514c8

    if-eq v12, v13, :cond_1df

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0xbdb28

    if-ne v12, v13, :cond_1f1

    .line 299
    :cond_1df
    const-string v12, "ServiceNotifications"

    const v13, 0x7f0704ed

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "newStatus":Ljava/lang/String;
    :goto_1e8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    .line 300
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_1f1
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_1ff

    .line 301
    const-string v12, "Bot"

    const v13, 0x7f0700d9

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1e8

    .line 303
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_1ff
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1e8

    .line 308
    .end local v5    # "newStatus":Ljava/lang/String;
    .end local v6    # "newUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_204
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    goto/16 :goto_ad
.end method
