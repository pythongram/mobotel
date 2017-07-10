.class public Lorg/telegram/ui/Components/ChatActivityEnterView;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    }
.end annotation


# instance fields
.field private allowGifs:Z

.field private allowShowTopView:Z

.field private allowStickers:Z

.field private asAdminButton:Landroid/widget/ImageView;

.field private attachButton:Landroid/widget/ImageView;

.field private attachLayout:Landroid/widget/LinearLayout;

.field private audioSendButton:Landroid/widget/ImageView;

.field private audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

.field private audioToSendPath:Ljava/lang/String;

.field private audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

.field private audioVideoButtonContainer:Landroid/widget/FrameLayout;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private botButton:Landroid/widget/ImageView;

.field private botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botCount:I

.field private botKeyboardPopup:Landroid/widget/PopupWindow;

.field private botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

.field private botMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private cameraDrawable:Landroid/graphics/drawable/Drawable;

.field private canWriteToChannel:Z

.field private cancelBotButton:Landroid/widget/ImageView;

.field private currentPopupContentType:I

.field private currentTopViewAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

.field private dialog_id:J

.field private distCanMove:F

.field private doneButtonAnimation:Landroid/animation/AnimatorSet;

.field private doneButtonContainer:Landroid/widget/FrameLayout;

.field private doneButtonImage:Landroid/widget/ImageView;

.field private doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

.field private dotDrawable:Landroid/graphics/drawable/Drawable;

.field private dotPaint:Landroid/graphics/Paint;

.field private editingCaption:Z

.field private editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private editingMessageReqId:I

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private forceShowSendButton:Z

.field private hasBotCommands:Z

.field private hasRecordVideo:Z

.field private ignoreTextChange:Z

.field private innerTextChange:I

.field private isPaused:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lastTimeString:Ljava/lang/String;

.field private lastTypingTimeSend:J

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lista:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field private messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private messageWebPageSearch:Z

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private needShowTopView:Z

.field private notifyButton:Landroid/widget/ImageView;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private other_ki:Ljava/lang/String;

.field private other_km:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private paintRecord:Landroid/graphics/Paint;

.field private paintingButton:Landroid/widget/ImageView;

.field private paintingIcon:Z

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pauseDrawable:Landroid/graphics/drawable/Drawable;

.field private pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field private pendingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playDrawable:Landroid/graphics/drawable/Drawable;

.field private preferences:Landroid/content/SharedPreferences;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private recordAudioVideoRunnable:Ljava/lang/Runnable;

.field private recordAudioVideoRunnableStarted:Z

.field private recordCancelImage:Landroid/widget/ImageView;

.field private recordCancelText:Landroid/widget/TextView;

.field private recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

.field private recordDeleteImageView:Landroid/widget/ImageView;

.field private recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

.field private recordInterfaceState:I

.field private recordPanel:Landroid/widget/FrameLayout;

.field private recordTimeContainer:Landroid/widget/LinearLayout;

.field private recordTimeText:Landroid/widget/TextView;

.field private recordedAudioBackground:Landroid/view/View;

.field private recordedAudioPanel:Landroid/widget/FrameLayout;

.field private recordedAudioPlayButton:Landroid/widget/ImageView;

.field private recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

.field private recordedAudioTimeTextView:Landroid/widget/TextView;

.field private recordingAudioVideo:Z

.field private redDotPaint:Landroid/graphics/Paint;

.field private replyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/AnimatorSet;

.field private runningAnimationType:I

.field private sendButton:Landroid/widget/ImageView;

.field private sendButtonContainer:Landroid/widget/FrameLayout;

.field private sendByEnter:Z

.field private showKeyboardOnResume:Z

.field private silent:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideText:Landroid/widget/LinearLayout;

.field private startedDraggingX:F

.field private textFieldContainer:Landroid/widget/LinearLayout;

.field private topView:Landroid/view/View;

.field private topViewShowed:Z

.field private videoSendButton:Landroid/widget/ImageView;

.field private waitingForKeyboardOpen:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
    .registers 24
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .param p3, "fragment"    # Lorg/telegram/ui/ChatActivity;
    .param p4, "isChat"    # Z

    .prologue
    .line 502
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->list:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lista:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->listb:Ljava/util/ArrayList;

    .line 242
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    .line 244
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 271
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    .line 272
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 307
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 319
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;

    .line 322
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnable:Ljava/lang/Runnable;

    .line 421
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;

    .line 422
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;

    .line 504
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    const-string v3, "chat_emojiPanelNewTrending"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->preferences:Landroid/content/SharedPreferences;

    .line 507
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusable(Z)V

    .line 508
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusableInTouchMode(Z)V

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setWillNotDraw(Z)V

    .line 511
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 512
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 513
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 514
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 515
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 517
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 518
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 519
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 520
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 521
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 522
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    .line 523
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 524
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 526
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 527
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "send_by_enter"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    .line 529
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 534
    .local v15, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 553
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 554
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 613
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setImeOptions(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextCaption;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setInputType(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSingleLine(Z)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setMaxLines(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setTextSize(IF)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setGravity(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/EditTextCaption;->setPadding(IIII)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "chat_messagePanelText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "chat_messagePanelHint"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "chat_messagePanelHint"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setTypeface(Landroid/graphics/Typeface;)V

    .line 628
    const-string v2, "painting_icon"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v18, v0

    .line 631
    .local v18, "view":Landroid/view/View;
    if-eqz p4, :cond_b2a

    .line 632
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-eqz v2, :cond_b26

    const/16 v2, 0x64

    :goto_2b7
    int-to-float v7, v2

    .line 636
    .local v7, "f":F
    :goto_2b8
    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x50

    const/high16 v5, 0x42500000    # 52.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$7;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$8;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 746
    if-eqz p4, :cond_4a8

    .line 747
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v4, 0x30

    const/16 v5, 0x55

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$9;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_b2e

    const v2, 0x7f020201

    :goto_3a3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v2, :cond_b33

    const/4 v2, 0x0

    :goto_3ce
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$10;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    const v3, 0x7f0200dc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$11;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-eqz v2, :cond_4a8

    .line 836
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const v3, 0x7f02028a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$12;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    :cond_4a8
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v2, :cond_b37

    const/16 v2, 0x8

    :goto_4bf
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const-string v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelVoiceDelete"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$13;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v4, "chat_recordedVoiceBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    const/4 v8, -0x1

    const/high16 v9, 0x42000000    # 32.0f

    const/16 v10, 0x13

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    const/4 v8, -0x1

    const/high16 v9, 0x42000000    # 32.0f

    const/16 v10, 0x13

    const/high16 v11, 0x42b80000    # 92.0f

    const/4 v12, 0x0

    const/high16 v13, 0x42500000    # 52.0f

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    const v2, 0x7f02023e

    const-string v3, "chat_recordedVoicePlayPause"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "chat_recordedVoicePlayPausePressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 903
    const v2, 0x7f02023d

    const-string v3, "chat_recordedVoicePlayPause"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "chat_recordedVoicePlayPausePressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 905
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    const/16 v8, 0x30

    const/high16 v9, 0x42400000    # 48.0f

    const/16 v10, 0x53

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const-string v3, "chat_messagePanelVoiceDuration"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x41500000    # 13.0f

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x11

    const/high16 v11, 0x41f00000    # 30.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    const v3, 0x7f020257

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_recordVoiceCancel"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const-string v3, "SlideToCancel"

    const v4, 0x7f070510

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const-string v3, "chat_recordVoiceCancel"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const-string v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    const/16 v8, 0xb

    const/16 v9, 0xb

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string v3, "chat_recordTime"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$15;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1106
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const v3, 0x7f0201d0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    if-eqz v2, :cond_904

    .line 1114
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const v3, 0x7f02014a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    :cond_904
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const/16 v8, 0x7c

    const/high16 v9, 0x42f80000    # 124.0f

    const/16 v10, 0x55

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x3df00000    # -36.0f

    const/high16 v14, -0x3de80000    # -38.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-direct {v3}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelCancelInlineBot"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_messagePanelSend"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x7f02016c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$17;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$18;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const v3, 0x7f0200c2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_editDoneIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    new-instance v2, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$19;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1196
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1197
    .local v17, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "kbd_height"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 1198
    const-string v2, "kbd_height_land3"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 1200
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    .line 1201
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1203
    return-void

    .line 632
    .end local v7    # "f":F
    .end local v17    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_b26
    const/16 v2, 0x32

    goto/16 :goto_2b7

    .line 634
    :cond_b2a
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "f":F
    goto/16 :goto_2b8

    .line 786
    :cond_b2e
    const v2, 0x7f020202

    goto/16 :goto_3a3

    .line 789
    :cond_b33
    const/16 v2, 0x8

    goto/16 :goto_3ce

    .line 868
    :cond_b37
    const/4 v2, 0x0

    goto/16 :goto_4bf
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->savePainting(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    return v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ContextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    return-void
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6602(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    return p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnableStarted:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$7402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method private checkSendButton(Z)V
    .registers 15
    .param p1, "animated"    # Z

    .prologue
    .line 1778
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_5

    .line 2015
    :cond_4
    :goto_4
    return-void

    .line 1781
    :cond_5
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v5, :cond_a

    .line 1782
    const/4 p1, 0x0

    .line 1784
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1785
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gtz v5, :cond_22

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-nez v5, :cond_22

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v5, :cond_2fb

    .line 1786
    :cond_22
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getCaption()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "caption":Ljava/lang/String;
    if-eqz v1, :cond_1c3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1c3

    const/4 v3, 0x1

    .line 1788
    .local v3, "showBotButton":Z
    :goto_33
    if-nez v1, :cond_1c6

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1c6

    const/4 v4, 0x1

    .line 1789
    .local v4, "showSendButton":Z
    :goto_3e
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4a

    if-nez v3, :cond_4a

    if-eqz v4, :cond_4

    .line 1790
    :cond_4a
    if-eqz p1, :cond_24b

    .line 1791
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_59

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getCaption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_59
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_60

    if-nez v1, :cond_4

    .line 1794
    :cond_60
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6c

    .line 1795
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1796
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1798
    :cond_6c
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_78

    .line 1799
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1800
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1803
    :cond_78
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_d8

    .line 1804
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1805
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1806
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1807
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1805
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1809
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1810
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$26;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$26;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1825
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1826
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1827
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v5, :cond_d8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d8

    .line 1828
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 1832
    :cond_d8
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_126

    .line 1836
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    :cond_126
    if-eqz v3, :cond_1c9

    .line 1841
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    :cond_162
    :goto_162
    if-eqz v1, :cond_207

    .line 1850
    const/4 v5, 0x3

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1851
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1863
    :goto_1a6
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1864
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1865
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$27;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$27;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1889
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    .line 1787
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "showBotButton":Z
    .end local v4    # "showSendButton":Z
    :cond_1c3
    const/4 v3, 0x0

    goto/16 :goto_33

    .line 1788
    .restart local v3    # "showBotButton":Z
    :cond_1c6
    const/4 v4, 0x0

    goto/16 :goto_3e

    .line 1844
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v4    # "showSendButton":Z
    :cond_1c9
    if-eqz v4, :cond_162

    .line 1845
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1856
    :cond_207
    const/4 v5, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1857
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1a6

    .line 1891
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_24b
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1892
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1893
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1894
    if-eqz v1, :cond_2c2

    .line 1895
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1896
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1897
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1898
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1899
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1900
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1901
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1902
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1913
    :goto_29b
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1914
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 1915
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1916
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v5, :cond_2bc

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2bc

    .line 1917
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 1919
    :cond_2bc
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_4

    .line 1904
    :cond_2c2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1905
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1906
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1907
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1908
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1909
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1910
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1911
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29b

    .line 1923
    .end local v1    # "caption":Ljava/lang/String;
    .end local v3    # "showBotButton":Z
    .end local v4    # "showSendButton":Z
    :cond_2fb
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_30b

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1924
    :cond_30b
    if-eqz p1, :cond_46c

    .line 1925
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1929
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_31e

    .line 1930
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1931
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1933
    :cond_31e
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_32a

    .line 1934
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1935
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1938
    :cond_32a
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_384

    .line 1939
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1940
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1941
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1942
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1943
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1941
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1945
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1946
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1947
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1948
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_384

    .line 1949
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 1953
    :cond_384
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1954
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1955
    const/4 v5, 0x2

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1958
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_431

    .line 1962
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    :goto_414
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1972
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1973
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$28;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$28;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1992
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    .line 1966
    :cond_431
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_414

    .line 1994
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_46c
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1995
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1996
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1997
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1998
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1999
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2000
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2001
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2002
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2003
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2004
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2005
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2006
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 2007
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4d0

    .line 2008
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2010
    :cond_4d0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2011
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_4
.end method

.method private createEmojiView()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_7

    .line 2890
    :goto_6
    return-void

    .line 2640
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2641
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$35;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    .line 2888
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2889
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_6
.end method

.method private hideRecordedAudioPanel()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1649
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 1650
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1651
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1652
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1653
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const-string v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 1654
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1653
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1656
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1657
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$24;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1664
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1665
    return-void
.end method

.method private onWindowSizeChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeight()I

    move-result v0

    .line 1502
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v1, :cond_f

    .line 1503
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 1505
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v1, :cond_18

    .line 1506
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onWindowSizeChanged(I)V

    .line 1508
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v1, :cond_4b

    .line 1509
    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4c

    .line 1510
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v1, :cond_4b

    .line 1511
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1512
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_4b

    .line 1513
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1515
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1529
    :cond_4b
    :goto_4b
    return-void

    .line 1519
    :cond_4c
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-nez v1, :cond_4b

    .line 1520
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1521
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_4b

    .line 1522
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1524
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4b
.end method

.method private openKeyboardInternal()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3019
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_1f

    :cond_a
    move v0, v1

    :goto_b
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 3022
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_21

    .line 3023
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 3029
    :cond_1e
    :goto_1e
    return-void

    .line 3019
    :cond_1f
    const/4 v0, 0x2

    goto :goto_b

    .line 3024
    :cond_21
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1e

    .line 3025
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 3026
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1e
.end method

.method private removeGifFromInputField()V
    .registers 3

    .prologue
    .line 3011
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1d

    .line 3012
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gif "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 3016
    :cond_1d
    return-void
.end method

.method private resizeForTopView(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    .line 1532
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1533
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-eqz p1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_18
    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1534
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    return-void

    .line 1533
    :cond_21
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private savePainting(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3298
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tellgram_painting.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3299
    .local v1, "fileOutputStream":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3300
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 3301
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 3305
    .end local v1    # "fileOutputStream":Ljava/io/OutputStream;
    :goto_34
    return-void

    .line 3302
    :catch_35
    move-exception v0

    .line 3303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private sendMessage()V
    .registers 20

    .prologue
    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_3e

    .line 1671
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_3b

    .line 1672
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 1673
    .local v13, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :cond_38

    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v2, v3, :cond_38

    .line 1674
    const-string v12, "bigchat_message"

    .line 1681
    .end local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v12, "action":Ljava/lang/String;
    :goto_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12, v2}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1745
    .end local v12    # "action":Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 1676
    .restart local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_38
    const-string v12, "chat_message"

    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_2d

    .line 1679
    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3b
    const-string v12, "pm_message"

    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_2d

    .line 1685
    .end local v12    # "action":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v2, :cond_91

    .line 1686
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v17

    .line 1687
    .local v17, "playing":Lorg/telegram/messenger/MessageObject;
    if-eqz v17, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_5f

    .line 1688
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1690
    :cond_5f
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_87

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 1694
    :cond_87
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    .line 1695
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto :goto_37

    .line 1698
    .end local v17    # "playing":Lorg/telegram/messenger/MessageObject;
    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 1701
    .local v16, "message":Ljava/lang/CharSequence;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1702
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "nicewrite"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16a

    .line 1703
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Telehgram/TextNicer;->Splator(Ljava/lang/String;)V

    .line 1704
    invoke-static {}, Lorg/telegram/ui/Telehgram/TextNicer;->getLista()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Telehgram/TextNicer;->arraysplator(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1705
    const-string v15, ""

    .line 1706
    .local v15, "listString":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/ui/Telehgram/TextNicer;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1707
    .local v11, "aList":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1708
    goto :goto_c5

    .line 1709
    .end local v11    # "aList":Ljava/lang/Object;
    :cond_e1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    .line 1710
    .local v14, "lis":I
    invoke-static {}, Lorg/telegram/ui/Telehgram/TextNicer;->clean()V

    .line 1711
    const/4 v2, 0x2

    if-le v14, v2, :cond_127

    .line 1712
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->processSendingText(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v2, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1718
    :cond_111
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1721
    :cond_127
    const/4 v2, 0x2

    if-gt v14, v2, :cond_37

    .line 1724
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->processSendingText(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1730
    :cond_154
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1736
    .end local v14    # "lis":I
    .end local v15    # "listString":Ljava/lang/String;
    :cond_16a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->processSendingText(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1742
    :cond_194
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v2, :cond_37

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_37
.end method

.method private setEmojiButtonImage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2985
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v1, :cond_28

    .line 2986
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "emoji"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "selected_page"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2990
    .local v0, "currentPage":I
    :goto_15
    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    if-nez v1, :cond_2f

    .line 2991
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2997
    :cond_27
    :goto_27
    return-void

    .line 2988
    .end local v0    # "currentPage":I
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v0

    .restart local v0    # "currentPage":I
    goto :goto_15

    .line 2992
    :cond_2f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 2993
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 2994
    :cond_3b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 2995
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27
.end method

.method private setRecordVideoButtonVisible(ZZ)V
    .registers 15
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const v2, 0x3dcccccd

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1233
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    if-nez v0, :cond_d

    .line 1269
    :goto_c
    return-void

    .line 1236
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_bf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_15
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_24

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1241
    :cond_24
    if-eqz p2, :cond_cf

    .line 1242
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1243
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x6

    new-array v5, v0, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string v7, "scaleX"

    new-array v8, v10, [F

    if-eqz p1, :cond_c2

    move v0, v1

    :goto_3b
    aput v0, v8, v11

    .line 1244
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v11

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    if-eqz p1, :cond_c5

    move v0, v1

    :goto_4c
    aput v0, v8, v11

    .line 1245
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v10

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string v8, "alpha"

    new-array v9, v10, [F

    if-eqz p1, :cond_c7

    move v0, v1

    :goto_5e
    aput v0, v9, v11

    .line 1246
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    if-eqz p1, :cond_c9

    move v0, v2

    :goto_70
    aput v0, v9, v11

    .line 1247
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    if-eqz p1, :cond_cb

    :goto_81
    aput v2, v8, v11

    .line 1248
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    if-eqz p1, :cond_cd

    :goto_92
    aput v3, v7, v11

    .line 1249
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1243
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_c

    .line 1236
    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_c2
    move v0, v2

    .line 1243
    goto/16 :goto_3b

    :cond_c5
    move v0, v2

    .line 1244
    goto :goto_4c

    :cond_c7
    move v0, v3

    .line 1245
    goto :goto_5e

    :cond_c9
    move v0, v1

    .line 1246
    goto :goto_70

    :cond_cb
    move v2, v1

    .line 1247
    goto :goto_81

    :cond_cd
    move v3, v1

    .line 1248
    goto :goto_92

    .line 1262
    :cond_cf
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_ff

    move v0, v1

    :goto_d4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1263
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_101

    move v0, v1

    :goto_dc
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1264
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_103

    move v0, v1

    :goto_e4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1265
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_105

    move v0, v2

    :goto_ec
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_107

    :goto_f3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_109

    :goto_fa
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_c

    :cond_ff
    move v0, v2

    .line 1262
    goto :goto_d4

    :cond_101
    move v0, v2

    .line 1263
    goto :goto_dc

    :cond_103
    move v0, v3

    .line 1264
    goto :goto_e4

    :cond_105
    move v0, v1

    .line 1265
    goto :goto_ec

    :cond_107
    move v2, v1

    .line 1266
    goto :goto_f3

    :cond_109
    move v3, v1

    .line 1267
    goto :goto_fa
.end method

.method private showPopup(II)V
    .registers 12
    .param p1, "show"    # I
    .param p2, "contentType"    # I

    .prologue
    const/high16 v8, 0x43480000    # 200.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 2906
    if-ne p1, v7, :cond_da

    .line 2907
    if-nez p2, :cond_16

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v3, :cond_16

    .line 2908
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    if-nez v3, :cond_13

    .line 2981
    :cond_12
    :goto_12
    return-void

    .line 2911
    :cond_13
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 2914
    :cond_16
    const/4 v1, 0x0

    .line 2915
    .local v1, "currentView":Landroid/view/View;
    if-nez p2, :cond_b5

    .line 2916
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2917
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2f

    .line 2918
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2920
    :cond_2f
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2928
    :cond_31
    :goto_31
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 2930
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    if-gtz v3, :cond_4b

    .line 2931
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "emoji"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "kbd_height"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 2933
    :cond_4b
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    if-gtz v3, :cond_63

    .line 2934
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "emoji"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "kbd_height_land3"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2936
    :cond_63
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_d1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2937
    .local v0, "currentHeight":I
    :goto_6f
    if-ne p2, v7, :cond_7b

    .line 2938
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2940
    :cond_7b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_84

    .line 2941
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2944
    :cond_84
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2945
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2946
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2947
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_98

    .line 2948
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2950
    :cond_98
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v3, :cond_12

    .line 2951
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2952
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2953
    if-nez p2, :cond_d4

    .line 2954
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v4, 0x7f020147

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2958
    :cond_ad
    :goto_ad
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 2959
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    goto/16 :goto_12

    .line 2921
    .end local v0    # "currentHeight":I
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b5
    if-ne p2, v7, :cond_31

    .line 2922
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_c8

    .line 2923
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2925
    :cond_c8
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2926
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto/16 :goto_31

    .line 2936
    :cond_d1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_6f

    .line 2955
    .restart local v0    # "currentHeight":I
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d4
    if-ne p2, v7, :cond_ad

    .line 2956
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    goto :goto_ad

    .line 2962
    .end local v0    # "currentHeight":I
    .end local v1    # "currentView":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_da
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_e1

    .line 2963
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 2965
    :cond_e1
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 2966
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v3, :cond_ed

    .line 2967
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2969
    :cond_ed
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_f6

    .line 2970
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2972
    :cond_f6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v3, :cond_106

    .line 2973
    if-nez p1, :cond_fe

    .line 2974
    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2976
    :cond_fe
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2977
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 2979
    :cond_106
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto/16 :goto_12
.end method

.method private updateBotButton()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2433
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 2460
    :goto_7
    return-void

    .line 2436
    :cond_8
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_87

    .line 2437
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 2438
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2441
    :cond_1d
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "theme"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2442
    .local v1, "themePrefs":Landroid/content/SharedPreferences;
    const-string v2, "chatEditTextIconsColor"

    const v3, -0x525253

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2444
    .local v0, "color":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_7e

    .line 2445
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_75

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_75

    .line 2446
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020147

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2453
    :goto_45
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2458
    .end local v0    # "color":I
    .end local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :goto_4c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2459
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8d

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8d

    :cond_6a
    const/high16 v2, 0x42400000    # 48.0f

    :goto_6c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    goto :goto_7

    .line 2448
    .restart local v0    # "color":I
    .restart local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_45

    .line 2451
    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f02007c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_45

    .line 2456
    .end local v0    # "color":I
    .end local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    .line 2459
    :cond_8d
    const/high16 v2, 0x42c00000    # 96.0f

    goto :goto_6c
.end method

.method private updateFieldHint()V
    .registers 8

    .prologue
    const v6, 0x7f07054b

    .line 1603
    const/4 v1, 0x0

    .line 1604
    .local v1, "isChannel":Z
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_24

    .line 1605
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1606
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_3d

    const/4 v1, 0x1

    .line 1608
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_24
    :goto_24
    if-eqz v1, :cond_68

    .line 1609
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_46

    .line 1610
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    if-eqz v2, :cond_3f

    const-string v2, "Caption"

    const v4, 0x7f070104

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_39
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    .line 1621
    :goto_3c
    return-void

    .line 1606
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3d
    const/4 v1, 0x0

    goto :goto_24

    .line 1610
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3f
    const-string v2, "TypeMessage"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 1612
    :cond_46
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_59

    .line 1613
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "ChannelSilentBroadcast"

    const v4, 0x7f070158

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1615
    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "ChannelBroadcast"

    const v4, 0x7f07011b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1619
    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v3, "TypeMessage"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3c
.end method

.method private updateFieldRight(I)V
    .registers 9
    .param p1, "attachVisible"    # I

    .prologue
    const/high16 v6, 0x43140000    # 148.0f

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v5, 0x42c40000    # 98.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 2018
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_13

    .line 2058
    :cond_12
    :goto_12
    return-void

    .line 2021
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2022
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_5a

    .line 2023
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_36

    :cond_2a
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    .line 2024
    :cond_36
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-eqz v3, :cond_46

    :goto_3a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2057
    :cond_40
    :goto_40
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_46
    move v1, v2

    .line 2024
    goto :goto_3a

    .line 2026
    :cond_48
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-nez v1, :cond_53

    .line 2027
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2030
    :cond_53
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2034
    :cond_5a
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a1

    .line 2035
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-eq v3, v4, :cond_40

    .line 2036
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_71

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7d

    :cond_71
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8f

    .line 2037
    :cond_7d
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-nez v1, :cond_88

    .line 2038
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2041
    :cond_88
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2045
    :cond_8f
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingIcon:Z

    if-nez v3, :cond_9a

    .line 2046
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2049
    :cond_9a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 2055
    :cond_a1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40
.end method

.method private updateRecordIntefrace()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2061
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    if-eqz v3, :cond_e7

    .line 2062
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    if-ne v3, v10, :cond_f

    .line 2149
    :cond_e
    :goto_e
    return-void

    .line 2065
    :cond_f
    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    .line 2067
    :try_start_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_2f

    .line 2068
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 2069
    .local v2, "pm":Landroid/os/PowerManager;
    const v3, 0x20000006

    const-string v4, "audio record lock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2070
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_e1

    .line 2075
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_2f
    :goto_2f
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 2077
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2078
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 2079
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    .line 2080
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string v4, "00:00"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->resetAlpha()V

    .line 2082
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    .line 2084
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2085
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2086
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2088
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setX(F)V

    .line 2089
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 2090
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_86

    .line 2091
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2093
    :cond_86
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 2094
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string v6, "translationX"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string v6, "scale"

    new-array v7, v10, [F

    aput v12, v7, v9

    .line 2095
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 2096
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    .line 2094
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2097
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2098
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$29;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$29;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2107
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2108
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_e

    .line 2072
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :catch_e1
    move-exception v0

    .line 2073
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 2110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e7
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_f3

    .line 2112
    :try_start_eb
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2113
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f3} :catch_167

    .line 2118
    :cond_f3
    :goto_f3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 2119
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    if-eqz v3, :cond_e

    .line 2122
    iput v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    .line 2124
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_107

    .line 2125
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2127
    :cond_107
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 2128
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string v6, "translationX"

    new-array v7, v10, [F

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string v6, "scale"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 2129
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    .line 2130
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    .line 2128
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2131
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2132
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$30;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$30;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2146
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2147
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_e

    .line 2114
    :catch_167
    move-exception v0

    .line 2115
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f3
.end method


# virtual methods
.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 6
    .param p1, "searchImage"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 3064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_14

    .line 3066
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 3068
    :cond_14
    return-void
.end method

.method public addStickerToRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 3
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2901
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 2902
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2903
    return-void
.end method

.method public addTopView(Landroid/view/View;I)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1290
    if-nez p1, :cond_5

    .line 1298
    :goto_4
    return-void

    .line 1293
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1296
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v0, -0x1

    int-to-float v1, p2

    const/16 v2, 0x33

    const/high16 v4, 0x40000000    # 2.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v8, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    goto :goto_4
.end method

.method public closeKeyboard()V
    .registers 2

    .prologue
    .line 3052
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3053
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .registers 23
    .param p1, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p2, "replyMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2534
    if-eqz p1, :cond_4

    if-nez p3, :cond_5

    .line 2626
    :cond_4
    :goto_4
    return-void

    .line 2537
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    if-eqz v4, :cond_22

    .line 2538
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_4

    .line 2539
    :cond_22
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v4, :cond_35

    .line 2540
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2541
    :cond_35
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    if-eqz v4, :cond_45

    .line 2542
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->shareMyContact(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_4

    .line 2543
    :cond_45
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    if-eqz v4, :cond_9d

    .line 2544
    new-instance v15, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2545
    .local v15, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "ShareYouLocationTitle"

    const v5, 0x7f070505

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2546
    const-string v4, "ShareYouLocationInfo"

    const v5, 0x7f070503

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2547
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$33;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$33;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2559
    const-string v4, "Cancel"

    const v5, 0x7f0700fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2560
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 2561
    .end local v15    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_9d
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v4, :cond_af

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v4, :cond_af

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v4, :cond_c1

    .line 2562
    :cond_af
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v4, v5, v0, v1, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_4

    .line 2563
    :cond_c1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-eqz v4, :cond_4

    .line 2564
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ChatActivity;->processSwitchButton(Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2567
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->same_peer:Z

    if-eqz v4, :cond_12d

    .line 2568
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    .line 2569
    .local v17, "uid":I
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_f3

    .line 2570
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move/from16 v17, v0

    .line 2572
    :cond_f3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 2573
    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v18, :cond_4

    .line 2576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2578
    .end local v17    # "uid":I
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12d
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2579
    .local v14, "args":Landroid/os/Bundle;
    const-string v4, "onlySelect"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2580
    const-string v4, "dialogsType"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2581
    new-instance v16, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 2582
    .local v16, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$34;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$34;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 2623
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 29
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 3140
    sget v18, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    .line 3142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 3144
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/BotKeyboardView;->invalidateViews()V

    .line 3254
    :cond_2a
    :goto_2a
    return-void

    .line 3147
    :cond_2b
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f3

    .line 3148
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3149
    .local v16, "t":J
    const-wide/16 v18, 0x3e8

    div-long v18, v16, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 3150
    .local v15, "time":Ljava/lang/Long;
    const-wide/16 v18, 0x3e8

    rem-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v12, v18, 0xa

    .line 3151
    .local v12, "ms":I
    const-string v18, "%02d:%02d.%02d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    rem-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 3152
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d6

    .line 3153
    :cond_9c
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x5

    rem-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_c3

    .line 3154
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 3156
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d6

    .line 3157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3160
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v19, v0

    const/16 v18, 0x1

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    goto/16 :goto_2a

    .line 3163
    .end local v12    # "ms":I
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "time":Ljava/lang/Long;
    .end local v16    # "t":J
    :cond_f3
    sget v18, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_11a

    .line 3164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 3165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 3167
    :cond_11a
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_12a

    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_158

    .line 3168
    :cond_12a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3169
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 3170
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    .line 3171
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    goto/16 :goto_2a

    .line 3173
    :cond_158
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_175

    .line 3174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    move/from16 v18, v0

    if-nez v18, :cond_2a

    .line 3175
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    .line 3176
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    goto/16 :goto_2a

    .line 3178
    :cond_175
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_334

    .line 3179
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3180
    const/16 v18, 0x1

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    if-eqz v18, :cond_31f

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3186
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 3187
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 3188
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 3189
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3190
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v18, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 3192
    const-string v18, "-1"

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 3193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 3194
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3195
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3196
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x300

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 3197
    new-instance v18, Lorg/telegram/messenger/MessageObject;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3201
    const/4 v8, 0x0

    .line 3202
    .local v8, "duration":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_276

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3204
    .local v7, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v18, v0

    if-eqz v18, :cond_317

    .line 3205
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 3210
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_276
    const/4 v6, 0x0

    :goto_277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_2d5

    .line 3211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3212
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v18, v0

    if-eqz v18, :cond_31b

    .line 3213
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_2b6

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_2c8

    .line 3214
    :cond_2b6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3216
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setWaveform([B)V

    .line 3220
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "%d:%02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    div-int/lit8 v22, v8, 0x3c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    rem-int/lit8 v22, v8, 0x3c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3221
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 3222
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 3223
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto/16 :goto_2a

    .line 3202
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_317
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_246

    .line 3210
    :cond_31b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_277

    .line 3225
    .end local v6    # "a":I
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v8    # "duration":I
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_31f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 3229
    :cond_334
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_364

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3231
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 3232
    .local v9, "frontSpeaker":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-eqz v9, :cond_361

    const/16 v18, 0x0

    :goto_358
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto/16 :goto_2a

    :cond_361
    const/high16 v18, -0x80000000

    goto :goto_358

    .line 3234
    .end local v9    # "frontSpeaker":Z
    :cond_364
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a0

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v18

    if-nez v18, :cond_2a

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_2a

    .line 3239
    :cond_3a0
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_411

    .line 3240
    const/16 v18, 0x0

    aget-object v11, p2, v18

    check-cast v11, Ljava/lang/Integer;

    .line 3241
    .local v11, "mid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 3242
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 3243
    .local v13, "player":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    iget v0, v13, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    iget v0, v13, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->isDragging()Z

    move-result v18

    if-nez v18, :cond_2a

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_2a

    .line 3249
    .end local v11    # "mid":Ljava/lang/Integer;
    .end local v13    # "player":Lorg/telegram/messenger/MessageObject;
    :cond_411
    sget v18, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_2a
.end method

.method public doneEditingMessage()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_37

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 1750
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    .line 1751
    new-array v7, v1, [Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    aput-object v0, v7, v2

    .line 1752
    .local v7, "message":[Ljava/lang/CharSequence;
    invoke-static {v7}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1753
    .local v5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    aget-object v2, v7, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$25;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$25;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 1761
    .end local v5    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v7    # "message":[Ljava/lang/CharSequence;
    :cond_37
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 1207
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_1c

    .line 1208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1211
    :cond_1c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1212
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_27

    .line 1213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1215
    :cond_27
    return v0
.end method

.method public getAttachButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBotButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCursorPosition()I
    .registers 2

    .prologue
    .line 2342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_6

    .line 2343
    const/4 v0, 0x0

    .line 2345
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionStart()I

    move-result v0

    goto :goto_5
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 3036
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getEmojiButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmojiPadding()I
    .registers 2

    .prologue
    .line 3135
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    return v0
.end method

.method public getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .registers 2

    .prologue
    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method public getFieldText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 2413
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2415
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getSelectionLength()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2349
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v2, :cond_6

    .line 2357
    :goto_5
    return v1

    .line 2353
    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionStart()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_15

    move-result v1

    sub-int v1, v2, v1

    goto :goto_5

    .line 2354
    :catch_15
    move-exception v0

    .line 2355
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public getSendButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2314
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasAudioToSend()Z
    .registers 2

    .prologue
    .line 3044
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 1229
    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hidePopup(Z)V
    .registers 9
    .param p1, "byBackButton"    # Z

    .prologue
    const/4 v6, 0x0

    .line 3000
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3001
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    if-eqz p1, :cond_40

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_40

    .line 3002
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3003
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3005
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_40
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3006
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    .line 3008
    :cond_46
    return-void
.end method

.method public hideSendButton()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 3269
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3270
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3271
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3272
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3273
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3274
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3275
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 3276
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3277
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3278
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3279
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3280
    return-void
.end method

.method public hideTopView(Z)V
    .registers 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_b

    .line 1494
    :cond_a
    :goto_a
    return-void

    .line 1459
    :cond_b
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1460
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1461
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_a

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1464
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1466
    :cond_1f
    if-eqz p1, :cond_5d

    .line 1467
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v4, [F

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$23;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 1489
    :cond_5d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1491
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a
.end method

.method public isEditingCaption()Z
    .registers 2

    .prologue
    .line 3040
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    return v0
.end method

.method public isEditingMessage()Z
    .registers 2

    .prologue
    .line 3032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isKeyboardVisible()Z
    .registers 2

    .prologue
    .line 3060
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method public isMessageWebPageSearchEnabled()Z
    .registers 2

    .prologue
    .line 1645
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return v0
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 3056
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isPopupView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRecordCircle(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2633
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTopViewVisible()Z
    .registers 2

    .prologue
    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1538
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1539
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1540
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1541
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1542
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1543
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1544
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1545
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1546
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1547
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1548
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1549
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_6d

    .line 1550
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    .line 1552
    :cond_6d
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_79

    .line 1554
    :try_start_71
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1555
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_83

    .line 1560
    :cond_79
    :goto_79
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_82

    .line 1561
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1563
    :cond_82
    return-void

    .line 1556
    :catch_83
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_79
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 1220
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v7, v1

    .line 1221
    .local v7, "top":I
    :goto_14
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int v6, v7, v1

    .line 1222
    .local v6, "bottom":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v0, v7, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1223
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1225
    return-void

    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_3d
    move v7, v0

    .line 1220
    goto :goto_14
.end method

.method public onEditTimeExpired()V
    .registers 3

    .prologue
    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1378
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1567
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1568
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3257
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 3258
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    if-eqz v0, :cond_1f

    .line 3259
    array-length v0, p3

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1b

    .line 3260
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 3262
    :cond_1b
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 3263
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3266
    :cond_1f
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1571
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1572
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    if-eqz v0, :cond_2e

    .line 1573
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1576
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2e

    .line 1577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1582
    :cond_2e
    return-void
.end method

.method public onSizeChanged(IZ)V
    .registers 12
    .param p1, "height"    # I
    .param p2, "isWidthGreater"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3072
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le p1, v6, :cond_2d

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v6, :cond_2d

    sget-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v6, :cond_2d

    .line 3073
    if-eqz p2, :cond_96

    .line 3074
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3075
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "kbd_height_land3"

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3082
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 3083
    if-eqz p2, :cond_b1

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3084
    .local v2, "newHeight":I
    :goto_37
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v6, v4, :cond_4d

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 3085
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3088
    :cond_4d
    const/4 v0, 0x0

    .line 3089
    .local v0, "currentView":Landroid/view/View;
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-nez v6, :cond_b4

    .line 3090
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3094
    :cond_54
    :goto_54
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v6, :cond_5d

    .line 3095
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 3098
    :cond_5d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3099
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-ne v6, v7, :cond_6f

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v2, :cond_8a

    .line 3100
    :cond_6f
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3101
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3102
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3103
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v6, :cond_8a

    .line 3104
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3105
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3106
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3111
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "newHeight":I
    :cond_8a
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    if-ne v6, p1, :cond_bb

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    if-ne v6, p2, :cond_bb

    .line 3112
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3132
    :goto_95
    return-void

    .line 3077
    :cond_96
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 3078
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "kbd_height"

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2d

    .line 3083
    :cond_b1
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_37

    .line 3091
    .restart local v0    # "currentView":Landroid/view/View;
    .restart local v2    # "newHeight":I
    :cond_b4
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v6, v4, :cond_54

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto :goto_54

    .line 3115
    .end local v0    # "currentView":Landroid/view/View;
    .end local v2    # "newHeight":I
    :cond_bb
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    .line 3116
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    .line 3118
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 3119
    .local v3, "oldValue":Z
    if-lez p1, :cond_100

    :goto_c3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 3120
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v4, :cond_d4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 3121
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3123
    :cond_d4
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    if-eqz v4, :cond_ed

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v4, :cond_ed

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eq v4, v3, :cond_ed

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v4

    if-nez v4, :cond_ed

    .line 3124
    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3125
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3127
    :cond_ed
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v4, :cond_fc

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    if-eqz v4, :cond_fc

    .line 3128
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 3129
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3131
    :cond_fc
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    goto :goto_95

    :cond_100
    move v4, v5

    .line 3119
    goto :goto_c3
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 6
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2894
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_15

    .line 2896
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2898
    :cond_15
    return-void
.end method

.method public openKeyboard()V
    .registers 2

    .prologue
    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 3049
    return-void
.end method

.method public processSendingText(Ljava/lang/CharSequence;)Z
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1764
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1765
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_54

    .line 1766
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45800000    # 4096.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 1767
    .local v11, "count":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_19
    if-ge v10, v11, :cond_52

    .line 1768
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    mul-int/lit16 v1, v10, 0x1000

    add-int/lit8 v2, v10, 0x1

    mul-int/lit16 v2, v2, 0x1000

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v12, v0

    .line 1769
    .local v12, "message":[Ljava/lang/CharSequence;
    invoke-static {v12}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1770
    .local v7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1767
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 1772
    .end local v7    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v12    # "message":[Ljava/lang/CharSequence;
    :cond_52
    const/4 v0, 0x1

    .line 1774
    .end local v10    # "a":I
    .end local v11    # "count":I
    :goto_53
    return v0

    :cond_54
    const/4 v0, 0x0

    goto :goto_53
.end method

.method public replaceWithText(IILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2362
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2363
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2364
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2365
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2369
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_1f
    return-void

    .line 2366
    :catch_20
    move-exception v1

    .line 2367
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public setAllowStickersAndGifs(ZZ)V
    .registers 5
    .param p1, "value"    # Z
    .param p2, "value2"    # Z

    .prologue
    .line 1306
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    if-eq v0, p2, :cond_22

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_22

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1310
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->removeView(Landroid/view/View;)V

    .line 1311
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1313
    :cond_22
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    .line 1314
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    .line 1315
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 1316
    return-void
.end method

.method public setBotsCount(IZ)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "hasCommands"    # Z

    .prologue
    .line 2463
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    .line 2464
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-eq v0, p2, :cond_b

    .line 2465
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    .line 2466
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 2468
    :cond_b
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;)V
    .registers 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2472
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;Z)V
    .registers 11
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2475
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, v6, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_14

    .line 2476
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2531
    :cond_13
    :goto_13
    return-void

    .line 2479
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_13

    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_26

    if-eqz p1, :cond_13

    .line 2482
    :cond_26
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-nez v2, :cond_4b

    .line 2483
    new-instance v2, Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    .line 2484
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2485
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$32;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$32;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setDelegate(Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;)V

    .line 2503
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    .line 2505
    :cond_4b
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2506
    if-eqz p1, :cond_ea

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_ea

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :goto_5d
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 2508
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v2, v7, :cond_ed

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    :goto_6d
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2509
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v6, :cond_78

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :cond_78
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BotKeyboardView;->setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V

    .line 2510
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_f3

    .line 2511
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2512
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_f1

    move v0, v4

    .line 2513
    .local v0, "keyboardHidden":Z
    :goto_a7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, v3, :cond_d2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    if-eqz v2, :cond_d2

    .line 2514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answered_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 2518
    :cond_d2
    if-nez v0, :cond_e5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v2

    if-nez v2, :cond_e5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 2519
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2530
    .end local v0    # "keyboardHidden":Z
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_e5
    :goto_e5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto/16 :goto_13

    :cond_ea
    move-object v2, v3

    .line 2506
    goto/16 :goto_5d

    .line 2508
    :cond_ed
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto/16 :goto_6d

    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_f1
    move v0, v5

    .line 2512
    goto :goto_a7

    .line 2522
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_f3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_e5

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v2, v4, :cond_e5

    .line 2523
    if-eqz p2, :cond_103

    .line 2524
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    goto :goto_e5

    .line 2526
    :cond_103
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    goto :goto_e5
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 3
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_d

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setCaption(Ljava/lang/String;)V

    .line 1285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1287
    :cond_d
    return-void
.end method

.method public setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V
    .registers 17
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "longPress"    # Z
    .param p4, "username"    # Z

    .prologue
    .line 2156
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2185
    :cond_8
    :goto_8
    return-void

    .line 2159
    :cond_9
    if-eqz p3, :cond_cd

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2161
    .local v10, "text":Ljava/lang/String;
    if-eqz p1, :cond_ab

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_ab

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2162
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2c
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    if-eqz p4, :cond_ad

    :cond_33
    if-eqz v11, :cond_ad

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_ad

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2167
    :goto_73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2169
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2171
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_9d

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    .line 2174
    :cond_9d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2175
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_8

    .line 2161
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ab
    const/4 v11, 0x0

    goto :goto_2c

    .line 2165
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_73

    .line 2178
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_cd
    if-eqz p1, :cond_11d

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_11d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2179
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_e4
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_eb

    if-eqz p4, :cond_11f

    :cond_eb
    if-eqz v11, :cond_11f

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_11f

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 2180
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_8

    .line 2178
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11d
    const/4 v11, 0x0

    goto :goto_e4

    .line 2182
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11f
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_8
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .prologue
    .line 2152
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .line 2153
    return-void
.end method

.method public setDialogId(J)V
    .registers 12
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1585
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    .line 1586
    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v1, v6

    if-gez v1, :cond_a0

    .line 1587
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v5, v6

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1588
    .local v0, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "Notifications"

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    .line 1589
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_4c

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v1, :cond_a4

    :cond_4c
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_a4

    move v1, v2

    :goto_51
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    .line 1590
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_91

    .line 1591
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v1, :cond_a6

    move v1, v3

    :goto_5e
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1592
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v1, :cond_a8

    const v1, 0x7f020201

    :goto_6a
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1593
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_ac

    :cond_7b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_ac

    :cond_87
    const/high16 v1, 0x42400000    # 48.0f

    :goto_89
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 1595
    :cond_91
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a0

    .line 1596
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_af

    :goto_9d
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1599
    .end local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    .line 1600
    return-void

    .restart local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a4
    move v1, v3

    .line 1589
    goto :goto_51

    :cond_a6
    move v1, v4

    .line 1591
    goto :goto_5e

    .line 1592
    :cond_a8
    const v1, 0x7f020202

    goto :goto_6a

    .line 1593
    :cond_ac
    const/high16 v1, 0x42c00000    # 96.0f

    goto :goto_89

    :cond_af
    move v2, v3

    .line 1596
    goto :goto_9d
.end method

.method public setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .registers 18
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "caption"    # Z

    .prologue
    .line 2188
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v11, :cond_a

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_b

    .line 2299
    :cond_a
    :goto_a
    return-void

    .line 2191
    :cond_b
    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    if-eqz v11, :cond_1c

    .line 2192
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    iget v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2193
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 2195
    :cond_1c
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2196
    move/from16 v0, p2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    .line 2197
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_218

    .line 2198
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_34

    .line 2199
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2200
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 2202
    :cond_34
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2203
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    .line 2205
    const/4 v11, 0x1

    new-array v6, v11, [Landroid/text/InputFilter;

    .line 2206
    .local v6, "inputFilters":[Landroid/text/InputFilter;
    if-eqz p2, :cond_c4

    .line 2207
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0xc8

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v6, v11

    .line 2208
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v11, :cond_be

    .line 2209
    new-instance v11, Landroid/text/SpannableStringBuilder;

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 2262
    :goto_79
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v11, v6}, Lorg/telegram/ui/Components/EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 2263
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 2264
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2265
    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2266
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2267
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2268
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2269
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2270
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2271
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2298
    .end local v6    # "inputFilters":[Landroid/text/InputFilter;
    .end local v7    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_b9
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    goto/16 :goto_a

    .line 2211
    .restart local v6    # "inputFilters":[Landroid/text/InputFilter;
    :cond_be
    const-string v11, ""

    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 2214
    :cond_c4
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0x1000

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v6, v11

    .line 2215
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v11, :cond_211

    .line 2216
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v12, v8, v11

    .line 2217
    .local v8, "message":[Ljava/lang/CharSequence;
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2218
    .local v4, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {v4}, Lorg/telegram/messenger/query/MessagesQuery;->sortEntities(Ljava/util/ArrayList;)V

    .line 2219
    new-instance v10, Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-direct {v10, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2220
    .local v10, "stringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v11, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const-class v13, Ljava/lang/Object;

    invoke-virtual {v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 2221
    .local v9, "spansToRemove":[Ljava/lang/Object;
    if-eqz v9, :cond_10c

    array-length v11, v9

    if-lez v11, :cond_10c

    .line 2222
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_101
    array-length v11, v9

    if-ge v1, v11, :cond_10c

    .line 2223
    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    .line 2226
    .end local v1    # "a":I
    :cond_10c
    if-eqz v4, :cond_183

    .line 2227
    const/4 v2, 0x0

    .line 2229
    .local v2, "addToOffset":I
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_110
    :try_start_110
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_183

    .line 2230
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 2231
    .local v5, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-le v11, v12, :cond_12b

    .line 2229
    :cond_128
    :goto_128
    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    .line 2234
    :cond_12b
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v11, :cond_19d

    .line 2235
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-ge v11, v12, :cond_14f

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_14f

    .line 2236
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 2238
    :cond_14f
    new-instance v12, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    move-object v11, v0

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-direct {v12, v11, v13}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v11, v2

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v14, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v13, v14

    add-int/2addr v13, v2

    const/16 v14, 0x21

    invoke-virtual {v10, v12, v11, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_17e} :catch_17f

    goto :goto_128

    .line 2253
    .end local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :catch_17f
    move-exception v3

    .line 2254
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2257
    .end local v1    # "a":I
    .end local v2    # "addToOffset":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_183
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_79

    .line 2239
    .restart local v1    # "a":I
    .restart local v2    # "addToOffset":I
    .restart local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_19d
    :try_start_19d
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-eqz v11, :cond_1b8

    .line 2240
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    const-string v12, "`"

    invoke-virtual {v10, v11, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2241
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v11, v2

    const-string v12, "`"

    invoke-virtual {v10, v11, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2242
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_128

    .line 2243
    :cond_1b8
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v11, :cond_1d3

    .line 2244
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    const-string v12, "```"

    invoke-virtual {v10, v11, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2245
    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v11, v2

    const-string v12, "```"

    invoke-virtual {v10, v11, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2246
    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_128

    .line 2247
    :cond_1d3
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v11, :cond_1f2

    .line 2248
    new-instance v11, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v12, v2

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v14, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v13, v14

    add-int/2addr v13, v2

    const/16 v14, 0x21

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_128

    .line 2249
    :cond_1f2
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v11, :cond_128

    .line 2250
    new-instance v11, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v12, "fonts/ritalic.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v12, v2

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v14, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v13, v14

    add-int/2addr v13, v2

    const/16 v14, 0x21

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_20f} :catch_17f

    goto/16 :goto_128

    .line 2259
    .end local v1    # "a":I
    .end local v2    # "addToOffset":I
    .end local v4    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v8    # "message":[Ljava/lang/CharSequence;
    .end local v9    # "spansToRemove":[Ljava/lang/Object;
    .end local v10    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_211
    const-string v11, ""

    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_79

    .line 2273
    .end local v6    # "inputFilters":[Landroid/text/InputFilter;
    :cond_218
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2274
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/text/InputFilter;

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 2275
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 2276
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2277
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2278
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2279
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 2280
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2281
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v12, 0x3dcccccd

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2282
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v12, 0x3dcccccd

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2283
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2284
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v12, 0x3dcccccd

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2285
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v12, 0x3dcccccd

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2286
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2287
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2288
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2289
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2290
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2291
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v12, ""

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2293
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2ae

    .line 2294
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2296
    :cond_2ae
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_b9
.end method

.method public setFieldFocused()V
    .registers 3

    .prologue
    .line 2372
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v1, :cond_9

    .line 2374
    :try_start_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 2379
    :cond_9
    :goto_9
    return-void

    .line 2375
    :catch_a
    move-exception v0

    .line 2376
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public setFieldFocused(Z)V
    .registers 6
    .param p1, "focus"    # Z

    .prologue
    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_5

    .line 2405
    :cond_4
    :goto_4
    return-void

    .line 2385
    :cond_5
    if-eqz p1, :cond_1c

    .line 2386
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2387
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$31;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2401
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_4

    .line 2402
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->clearFocus()V

    goto :goto_4
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_6

    .line 2332
    :cond_5
    :goto_5
    return-void

    .line 2325
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2326
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2327
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2329
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_5

    .line 2330
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    goto :goto_5
.end method

.method public setForceShowSendButton(ZZ)V
    .registers 3
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1301
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    .line 1302
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1303
    return-void
.end method

.method public setOpenGifsTabFirst()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1319
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 1320
    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->switchToGifRecent()V

    .line 1322
    return-void
.end method

.method public setReplyingMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 1624
    if-eqz p1, :cond_1a

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, v1, :cond_11

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1628
    :cond_11
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1637
    :goto_19
    return-void

    .line 1630
    :cond_1a
    if-nez p1, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_2d

    .line 1631
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1633
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_19

    .line 1635
    :cond_2d
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_19
.end method

.method public setSelection(I)V
    .registers 4
    .param p1, "start"    # I

    .prologue
    .line 2335
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_5

    .line 2339
    :goto_4
    return-void

    .line 2338
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(II)V

    goto :goto_4
.end method

.method public setWebPage(Lorg/telegram/tgnet/TLRPC$WebPage;Z)V
    .registers 3
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "searchWebPages"    # Z

    .prologue
    .line 1640
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1641
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 1642
    return-void
.end method

.method public showContextProgress(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    if-nez v0, :cond_5

    .line 1280
    :goto_4
    return-void

    .line 1275
    :cond_5
    if-eqz p1, :cond_d

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    goto :goto_4

    .line 1278
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    goto :goto_4
.end method

.method public showEditDoneProgress(ZZ)V
    .registers 13
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1384
    :cond_11
    if-nez p2, :cond_73

    .line 1385
    if-eqz p1, :cond_44

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleX(F)V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleY(F)V

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setAlpha(F)V

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1452
    :goto_43
    return-void

    .line 1396
    :cond_44
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleX(F)V

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleY(F)V

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ContextProgressView;->setAlpha(F)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_43

    .line 1407
    :cond_73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1408
    if-eqz p1, :cond_fe

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1412
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1413
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1414
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1415
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1416
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1417
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1411
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1430
    :goto_e6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$22;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_43

    .line 1419
    :cond_fe
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1422
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1423
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1424
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1425
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1426
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1427
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1421
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e6
.end method

.method public showSendButton()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3283
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3284
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3285
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3286
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3287
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3288
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3289
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 3290
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3291
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3292
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3293
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3294
    return-void
.end method

.method public showTopView(ZZ)V
    .registers 10
    .param p1, "animated"    # Z
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 1374
    :cond_11
    :goto_11
    return-void

    .line 1328
    :cond_12
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1329
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1330
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_11

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2b

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1336
    :cond_2b
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1337
    if-eqz p1, :cond_84

    .line 1338
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1339
    :cond_3a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$21;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_11

    .line 1362
    :cond_6d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_80

    if-eqz p2, :cond_11

    .line 1364
    :cond_80
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_11

    .line 1368
    :cond_84
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_97

    if-eqz p2, :cond_11

    .line 1370
    :cond_97
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_11
.end method
