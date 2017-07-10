.class public Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    }
.end annotation


# static fields
.field private static final copy:I = 0xa

.field private static final delete:I = 0xd

.field private static final delete_all:I = 0x2

.field private static final delete_chat:I = 0xe

.field private static final delete_downloaded:I = 0x1

.field private static final forward:I = 0xc

.field private static final id_chat_compose_panel:I = 0x3e8

.field private static final quoteforward:I = 0xb

.field private static final settings:I = 0x3


# instance fields
.field private actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private actionModeTitleContainer:Landroid/widget/FrameLayout;

.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private addContactItem:Landroid/widget/TextView;

.field private addToContactsButton:Landroid/widget/TextView;

.field private alertNameTextView:Landroid/widget/TextView;

.field private alertTextView:Landroid/widget/TextView;

.field private alertView:Landroid/widget/FrameLayout;

.field private alertViewAnimator:Landroid/animation/AnimatorSet;

.field private allowContextBotPanel:Z

.field private allowContextBotPanelSecond:Z

.field private allowStickersPanel:Z

.field private attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private bigEmptyView:Lorg/telegram/ui/Components/ChatBigEmptyView;

.field private botButtons:Lorg/telegram/messenger/MessageObject;

.field private botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private botContextResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private botInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private botReplyButtons:Lorg/telegram/messenger/MessageObject;

.field private botUser:Ljava/lang/String;

.field private botsCount:I

.field private bottomOverlay:Landroid/widget/FrameLayout;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private bottomOverlayChatText:Landroid/widget/TextView;

.field private bottomOverlayText:Landroid/widget/TextView;

.field private cacheEndReached:[Z

.field private cantDeleteMessagesCount:I

.field private chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private chatEnterTime:J

.field private chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private chatLeaveTime:J

.field private chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private chatMessageCellsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field private closeChatDialog:Landroid/app/Dialog;

.field private currentPicturePath:Ljava/lang/String;

.field private dialog_id:J

.field downloaderRunning:Z

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private editDoneItemAnimation:Landroid/animation/AnimatorSet;

.field private editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

.field private editingMessageObjectReqId:I

.field private emojiButtonRed:Landroid/view/View;

.field private emptyViewContainer:Landroid/widget/FrameLayout;

.field private endReached:[Z

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private first:Z

.field private firstLoading:Z

.field private first_unread_id:I

.field private forceScrollToTop:Z

.field private forwardEndReached:[Z

.field private forwardingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private forwaringMessage:Lorg/telegram/messenger/MessageObject;

.field private foundUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifHintTextView:Landroid/widget/TextView;

.field h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hasBotsCommands:Z

.field private headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private hideAlertViewRunnable:Ljava/lang/Runnable;

.field private highlightMessageId:I

.field i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private inlineReturn:J

.field private lastLoadIndex:I

.field private last_message_id:I

.field private linkSearchRequestId:I

.field private loading:Z

.field private loadingForward:Z

.field private loadingPinnedMessage:I

.field private loadsCount:I

.field private maxDate:[I

.field private maxMessageId:[I

.field private mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListViewIgnoreLayout:Z

.field private mentionListViewIsScrolling:Z

.field private mentionListViewLastViewPosition:I

.field private mentionListViewLastViewTop:I

.field private mentionListViewScrollOffsetY:I

.field private mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field protected messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messagesByDays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private messagesDict:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private minDate:[I

.field private minMessageId:[I

.field private muteItem:Landroid/widget/TextView;

.field private needSelectFromMessageId:Z

.field private newUnreadMessageCount:I

.field onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private openAnimationEnded:Z

.field private openSearchKeyboard:Z

.field private pagedownButton:Landroid/widget/FrameLayout;

.field private pagedownButtonAnimation:Landroid/animation/ObjectAnimator;

.field private pagedownButtonCounter:Landroid/widget/TextView;

.field private pagedownButtonShowedByScroll:Z

.field private paused:Z

.field private pendingLinkSearchString:Ljava/lang/String;

.field private pendingWebPageTimeoutRunnable:Ljava/lang/Runnable;

.field private pinnedImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private pinnedMessageImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private pinnedMessageNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

.field private pinnedMessageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private pinnedMessageView:Landroid/widget/FrameLayout;

.field private pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressView2:Landroid/view/View;

.field private readWhenResume:Z

.field private readWithDate:I

.field private readWithMid:I

.field private replyButtonAnimation:Landroid/animation/AnimatorSet;

.field private replyCloseImageView:Landroid/widget/ImageView;

.field private replyIconImageView:Landroid/widget/ImageView;

.field private replyImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private replyImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private replyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private reportSpamButton:Landroid/widget/TextView;

.field private reportSpamContainer:Landroid/widget/FrameLayout;

.field private reportSpamView:Landroid/widget/LinearLayout;

.field private reportSpamViewAnimator:Landroid/animation/AnimatorSet;

.field private returnToLoadIndex:I

.field private returnToMessageId:I

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private scrollToMessage:Lorg/telegram/messenger/MessageObject;

.field private scrollToMessagePosition:I

.field private scrollToTopOnResume:Z

.field private scrollToTopUnReadOnResume:Z

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchDownButton:Landroid/widget/ImageView;

.field private searchUpButton:Landroid/widget/ImageView;

.field private selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedMessagesIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedObject:Lorg/telegram/messenger/MessageObject;

.field private startLoadFromMessageId:I

.field private startVideoEdit:Ljava/lang/String;

.field private startX:F

.field private startY:F

.field private stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;

.field private stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersPanel:Landroid/widget/FrameLayout;

.field private stickersPanelArrow:Landroid/widget/ImageView;

.field private timeItem2:Landroid/view/View;

.field private unreadMessageObject:Lorg/telegram/messenger/MessageObject;

.field private unread_to_load:I

.field private userBlocked:Z

.field private waitingForCharaterEnterRunnable:Ljava/lang/Runnable;

.field private waitingForLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForReplyMessageLoad:Z

.field private wasPaused:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 429
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 134
    iput-boolean v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->userBlocked:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 217
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->allowContextBotPanelSecond:Z

    .line 224
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->paused:Z

    .line 225
    iput-boolean v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->wasPaused:Z

    .line 226
    iput-boolean v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->readWhenResume:Z

    .line 244
    new-array v0, v2, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    .line 245
    new-array v0, v2, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    .line 249
    new-array v0, v2, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->e:Ljava/util/HashMap;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->f:Ljava/util/HashMap;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->g:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->h:Ljava/util/HashSet;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->i:Ljava/util/HashSet;

    .line 261
    new-array v0, v2, [I

    fill-array-data v0, :array_f2

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    .line 262
    new-array v0, v2, [I

    fill-array-data v0, :array_fa

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    .line 263
    new-array v0, v2, [I

    fill-array-data v0, :array_102

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    .line 264
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    .line 265
    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    .line 266
    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cacheEndReached:[Z

    .line 267
    new-array v0, v2, [Z

    fill-array-data v0, :array_10a

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    .line 269
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    .line 271
    iput v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    .line 277
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first:Z

    .line 283
    const v0, 0x7fffffff

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    .line 284
    const/16 v0, -0x2710

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessagePosition:I

    .line 286
    iput-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botInfo:Ljava/util/HashMap;

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatEnterTime:J

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLeaveTime:J

    .line 296
    iput-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startVideoEdit:Ljava/lang/String;

    .line 297
    iput v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startX:F

    .line 298
    iput v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startY:F

    .line 300
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 406
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .line 417
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$3;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 430
    return-void

    .line 261
    :array_f2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 262
    :array_fa
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data

    .line 263
    :array_102
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data

    .line 267
    :array_10a
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botContextResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->clearChatData()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->gifHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateMessagesVisisblePart()V

    return-void
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forceScrollToTop:Z

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    return v0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->processRowSelect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startX:F

    return p1
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startY:F

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pagedownButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardingMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startDownloading(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stopDownloading()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayoutInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->processSelectedOption(I)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->inlineReturn:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createVoiceMessagesPlaylist(Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;IIZI)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessageId(IIZI)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loadsCount:I

    return v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->searchContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unread_to_load:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    return p1
.end method

.method private addToSelectedMessages(Lorg/telegram/messenger/MessageObject;)V
    .registers 13
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/16 v5, 0x8

    const/16 v10, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1488
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6b

    move v1, v3

    .line 1489
    .local v1, "index":I
    :goto_11
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1490
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v6, :cond_3a

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v6, :cond_49

    .line 1492
    :cond_3a
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    :cond_49
    :goto_49
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 1501
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_94

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1502
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1510
    :cond_6a
    :goto_6a
    return-void

    .end local v1    # "index":I
    :cond_6b
    move v1, v4

    .line 1488
    goto :goto_11

    .line 1495
    .restart local v1    # "index":I
    :cond_6d
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v6, :cond_84

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v6, :cond_49

    .line 1497
    :cond_84
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1504
    :cond_94
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v0

    .line 1505
    .local v0, "copyVisible":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v4, v7

    if-eqz v4, :cond_e5

    move v4, v3

    :goto_c0
    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1506
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v2

    .line 1507
    .local v2, "newCopyVisible":I
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    if-nez v6, :cond_e7

    :goto_e1
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_6a

    .end local v2    # "newCopyVisible":I
    :cond_e5
    move v4, v5

    .line 1505
    goto :goto_c0

    .restart local v2    # "newCopyVisible":I
    :cond_e7
    move v3, v5

    .line 1507
    goto :goto_e1
.end method

.method private alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    .registers 8
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2601
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 2613
    :goto_6
    return-void

    .line 2604
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2605
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2606
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2607
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    .line 2608
    const-string v1, "NoPlayerInstalled"

    const v2, 0x7f070363

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2612
    :goto_3a
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_6

    .line 2610
    :cond_42
    const-string v1, "NoHandleAppInstalled"

    const v2, 0x7f070359

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3a
.end method

.method private checkActionBarMenu()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_b

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1405
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->timeItem2:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->timeItem2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_1d

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->hideTimeItem()V

    .line 1411
    :cond_1d
    return-void
.end method

.method private checkListViewPaddings()V
    .registers 2

    .prologue
    .line 1974
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2003
    return-void
.end method

.method private clearChatData()V
    .registers 8

    .prologue
    const/high16 v6, -0x80000000

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1278
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1279
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1280
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1282
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_55

    move v1, v2

    :goto_1f
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1284
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_29
    const/4 v1, 0x2

    if-ge v0, v1, :cond_57

    .line 1285
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1286
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    const v3, 0x7fffffff

    aput v3, v1, v0

    .line 1287
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    aput v6, v1, v0

    .line 1288
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    aput v6, v1, v0

    .line 1289
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    aput v2, v1, v0

    .line 1290
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    aput-boolean v2, v1, v0

    .line 1291
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cacheEndReached:[Z

    aput-boolean v2, v1, v0

    .line 1292
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    aput-boolean v5, v1, v0

    .line 1284
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1282
    .end local v0    # "a":I
    :cond_55
    const/4 v1, 0x4

    goto :goto_1f

    .line 1294
    .restart local v0    # "a":I
    :cond_57
    iput-boolean v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first:Z

    .line 1295
    iput-boolean v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    .line 1296
    iput-boolean v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loading:Z

    .line 1297
    iput-boolean v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loadingForward:Z

    .line 1298
    iput-boolean v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForReplyMessageLoad:Z

    .line 1299
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    .line 1300
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    .line 1301
    iput-boolean v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->needSelectFromMessageId:Z

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 1303
    return-void
.end method

.method private createMenu(Landroid/view/View;Z)V
    .registers 26
    .param p1, "v"    # Landroid/view/View;
    .param p2, "single"    # Z

    .prologue
    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2299
    .end local p1    # "v":Landroid/view/View;
    :cond_c
    :goto_c
    return-void

    .line 2156
    .restart local p1    # "v":Landroid/view/View;
    :cond_d
    const/4 v15, 0x0

    .line 2157
    .local v15, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v19, v0

    if-eqz v19, :cond_56

    .line 2158
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v15

    .line 2162
    :cond_1c
    :goto_1c
    if-eqz v15, :cond_c

    .line 2165
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I

    move-result v17

    .line 2166
    .local v17, "type":I
    if-eqz p2, :cond_65

    iget-object v0, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v19, v0

    if-eqz v19, :cond_65

    .line 2167
    iget-object v0, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessageId(IIZI)V

    goto :goto_c

    .line 2159
    .end local v17    # "type":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_56
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 2160
    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v15

    goto :goto_1c

    .line 2171
    .restart local v17    # "type":I
    :cond_65
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2172
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    .line 2173
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_76
    if-ltz v6, :cond_91

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 2173
    add-int/lit8 v6, v6, -0x1

    goto :goto_76

    .line 2177
    :cond_91
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2180
    const/4 v8, 0x1

    .line 2182
    .local v8, "allowChatActions":Z
    if-nez p2, :cond_b5

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_b5

    const/16 v19, 0x14

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3e2

    .line 2183
    :cond_b5
    if-ltz v17, :cond_c

    .line 2184
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 2188
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2190
    .local v11, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2191
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .local v16, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v17, :cond_16c

    .line 2194
    const-string v19, "Delete"

    const v20, 0x7f0701c7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    :cond_f3
    :goto_f3
    const-string v19, "Delete"

    const v20, 0x7f0701c7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    const-string v19, "MultiForward"

    const v20, 0x7f070763

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    .line 2256
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    .line 2257
    .local v12, "finalItems":[Ljava/lang/CharSequence;
    new-instance v19, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$24;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2267
    const-string v19, "Message"

    const v20, 0x7f070312

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2268
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 2196
    .end local v12    # "finalItems":[Ljava/lang/CharSequence;
    :cond_16c
    const/16 v19, 0x14

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ac

    .line 2197
    const-string v19, "Copy"

    const v20, 0x7f07019a

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    const-string v19, "Delete"

    const v20, 0x7f0701c7

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2202
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e3

    .line 2203
    :cond_1c8
    const-string v19, "Copy"

    const v20, 0x7f07019a

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    :cond_1e3
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_246

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move/from16 v19, v0

    if-eqz v19, :cond_f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_f3

    .line 2208
    const-string v19, "SaveToGIFs"

    const v20, 0x7f0704b1

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    const/16 v19, 0xb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2211
    :cond_246
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_362

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_292

    .line 2213
    const-string v19, "SaveToGallery"

    const v20, 0x7f0704b2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    const-string v19, "ShareFile"

    const v20, 0x7f0704fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2217
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v19

    if-eqz v19, :cond_2d6

    .line 2218
    const-string v19, "SaveToMusic"

    const v20, 0x7f0704b4

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    const-string v19, "ShareFile"

    const v20, 0x7f0704fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2222
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v19

    if-eqz v19, :cond_345

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_30d

    .line 2224
    const-string v19, "SaveToGIFs"

    const v20, 0x7f0704b1

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    const/16 v19, 0xb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    :cond_30d
    const-string v19, "SaveToDownloads"

    const v20, 0x7f0704b0

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    const-string v19, "ShareFile"

    const v20, 0x7f0704fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2232
    :cond_345
    const-string v19, "SaveToGallery"

    const v20, 0x7f0704b2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2235
    :cond_362
    const/16 v19, 0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_387

    .line 2236
    const-string v19, "ShareFile"

    const v20, 0x7f0704fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2238
    :cond_387
    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f3

    .line 2239
    const-string v19, "SaveToGallery"

    const v20, 0x7f0704b2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    const-string v19, "SaveToDownloads"

    const v20, 0x7f0704b0

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    const-string v19, "ShareFile"

    const v20, 0x7f0704fe

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 2273
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 2274
    .local v7, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v13

    .line 2275
    .local v13, "item":Landroid/view/View;
    if-eqz v13, :cond_3fd

    .line 2276
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2278
    :cond_3fd
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v13

    .line 2279
    if-eqz v13, :cond_40e

    .line 2280
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2283
    :cond_40e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 2285
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2286
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2287
    .local v10, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    :goto_422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_45a

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 2289
    .local v18, "view":Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 2290
    const-string v19, "scaleY"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_47e

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    add-int/lit8 v6, v6, 0x1

    goto :goto_422

    .line 2292
    .end local v18    # "view":Landroid/view/View;
    :cond_45a
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2293
    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2294
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 2296
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->addToSelectedMessages(Lorg/telegram/messenger/MessageObject;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2298
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_c

    .line 2290
    :array_47e
    .array-data 4
        0x3dcccccd
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createVoiceMessagesPlaylist(Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;
    .registers 9
    .param p1, "startMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "playingUnreadMedia"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2586
    .local v3, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    .line 2588
    .local v1, "messageId":I
    if-eqz v1, :cond_41

    .line 2589
    const/4 v4, 0x0

    .line 2590
    .local v4, "started":Z
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "a":I
    :goto_17
    if-ltz v0, :cond_41

    .line 2591
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2592
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-le v5, v1, :cond_3e

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz p2, :cond_3b

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 2593
    :cond_3b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 2597
    .end local v0    # "a":I
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v4    # "started":Z
    :cond_41
    return-object v3
.end method

.method private downloaded(Lorg/telegram/messenger/MessageObject;)Z
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3477
    const/4 v0, 0x0

    .line 3478
    .local v0, "downloaded":Z
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    .line 3479
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3480
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3481
    const/4 v0, 0x1

    .line 3484
    .end local v1    # "f":Ljava/io/File;
    :cond_21
    if-nez v0, :cond_30

    .line 3485
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 3486
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3487
    const/4 v0, 0x1

    .line 3490
    .end local v1    # "f":Ljava/io/File;
    :cond_30
    return v0
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 2133
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_12

    .line 2134
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$23;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2144
    :cond_12
    return-void
.end method

.method private fixLayoutInternal()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 2108
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_67

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    .line 2109
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2114
    :goto_1f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 2115
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_6f

    .line 2116
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_66

    .line 2118
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v0, -0x1

    const/high16 v1, 0x421c0000    # 39.0f

    const/16 v2, 0x33

    const/high16 v4, -0x3df00000    # -36.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2129
    :cond_66
    :goto_66
    return v8

    .line 2111
    :cond_67
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_1f

    .line 2121
    :cond_6f
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_95

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_95

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_95

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_b6

    :cond_95
    :goto_95
    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 2123
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 2124
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_66

    :cond_b6
    move v0, v8

    .line 2121
    goto :goto_95

    :cond_b8
    move v8, v0

    .line 2129
    goto :goto_66
.end method

.method private forwardMessages(Ljava/util/ArrayList;Z)V
    .registers 9
    .param p2, "fromMyName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1269
    :cond_8
    :goto_8
    return-void

    .line 1262
    :cond_9
    if-nez p2, :cond_15

    .line 1263
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto :goto_8

    .line 1265
    :cond_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1266
    .local v0, "object":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_19
.end method

.method private getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;
    .registers 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "previousUid"    # I
    .param p3, "name"    # Z

    .prologue
    .line 2302
    const-string v1, ""

    .line 2303
    .local v1, "str":Ljava/lang/String;
    if-eqz p3, :cond_3d

    .line 2304
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eq p2, v3, :cond_3d

    .line 2305
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_5d

    .line 2306
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2307
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_3d

    .line 2308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2318
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3d
    :goto_3d
    iget v3, p1, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_8c

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_8c

    .line 2319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2325
    :goto_5c
    return-object v1

    .line 2310
    :cond_5d
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gez v3, :cond_3d

    .line 2311
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2312
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_3d

    .line 2313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 2320
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8c
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_b2

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    if-eqz v3, :cond_b2

    .line 2321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    .line 2323
    :cond_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c
.end method

.method private getMessageType(Lorg/telegram/messenger/MessageObject;)I
    .registers 13
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 1414
    if-nez p1, :cond_9

    move v6, v7

    .line 1482
    :cond_8
    :goto_8
    return v6

    .line 1417
    :cond_9
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-gtz v10, :cond_33

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v10

    if-eqz v10, :cond_33

    move v3, v5

    .line 1418
    .local v3, "isBroadcastError":Z
    :goto_16
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-gtz v10, :cond_22

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v10

    if-nez v10, :cond_24

    :cond_22
    if-eqz v3, :cond_37

    .line 1419
    :cond_24
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1420
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1423
    const/16 v6, 0x14

    goto :goto_8

    .end local v3    # "isBroadcastError":Z
    :cond_33
    move v3, v6

    .line 1417
    goto :goto_16

    .restart local v3    # "isBroadcastError":Z
    :cond_35
    move v6, v7

    .line 1426
    goto :goto_8

    .line 1429
    :cond_37
    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v6, v9, :cond_3d

    move v6, v7

    .line 1430
    goto :goto_8

    .line 1431
    :cond_3d
    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xa

    if-eq v6, v10, :cond_49

    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v6, v10, :cond_53

    .line 1432
    :cond_49
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-nez v6, :cond_51

    move v6, v7

    .line 1433
    goto :goto_8

    :cond_51
    move v6, v5

    .line 1435
    goto :goto_8

    .line 1437
    :cond_53
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_5b

    move v6, v8

    .line 1438
    goto :goto_8

    .line 1439
    :cond_5b
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1440
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    .line 1441
    .local v2, "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v5, :cond_73

    .line 1442
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v5

    if-nez v5, :cond_117

    .line 1443
    const/4 v6, 0x7

    goto :goto_8

    .line 1445
    :cond_73
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v5, :cond_117

    .line 1446
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 1447
    const/4 v6, 0x7

    goto :goto_8

    .line 1450
    .end local v2    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    :cond_81
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v5, :cond_9b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-nez v5, :cond_9b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-nez v5, :cond_9b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_104

    .line 1451
    :cond_9b
    const/4 v0, 0x0

    .line 1452
    .local v0, "canSave":Z
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_bc

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_bc

    .line 1453
    new-instance v1, Ljava/io/File;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1455
    const/4 v0, 0x1

    .line 1458
    .end local v1    # "f":Ljava/io/File;
    :cond_bc
    if-nez v0, :cond_cb

    .line 1459
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 1460
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 1461
    const/4 v0, 0x1

    .line 1464
    .end local v1    # "f":Ljava/io/File;
    :cond_cb
    if-eqz v0, :cond_117

    .line 1465
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-eqz v5, :cond_101

    .line 1466
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1467
    .local v4, "mime":Ljava/lang/String;
    if-eqz v4, :cond_101

    .line 1468
    const-string v5, "/xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 1469
    const/4 v6, 0x5

    goto/16 :goto_8

    .line 1470
    :cond_e6
    const-string v5, "/png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fe

    const-string v5, "/jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fe

    const-string v5, "/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_101

    :cond_fe
    move v6, v9

    .line 1471
    goto/16 :goto_8

    .line 1475
    .end local v4    # "mime":Ljava/lang/String;
    :cond_101
    const/4 v6, 0x4

    goto/16 :goto_8

    .line 1477
    .end local v0    # "canSave":Z
    :cond_104
    iget v5, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_10e

    .line 1478
    const/16 v6, 0x8

    goto/16 :goto_8

    .line 1479
    :cond_10e
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v5

    if-eqz v5, :cond_117

    .line 1480
    const/4 v6, 0x3

    goto/16 :goto_8

    :cond_117
    move v6, v8

    .line 1482
    goto/16 :goto_8
.end method

.method private isServiceRunning(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 496
    .local v0, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 497
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 498
    const/4 v2, 0x1

    .line 501
    .end local v1    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_34
    return v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_34
.end method

.method private loadFile(Lorg/telegram/tgnet/TLObject;)V
    .registers 5
    .param p1, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v2, 0x0

    .line 3438
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_10

    .line 3439
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 3443
    :cond_f
    :goto_f
    return-void

    .line 3440
    .restart local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_f

    .line 3441
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .end local p1    # "attach":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_f
.end method

.method private moveScrollToLastMessage()V
    .registers 5

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const v2, -0x186a0

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1275
    :cond_23
    return-void
.end method

.method private processRowSelect(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1513
    const/4 v0, 0x0

    .line 1514
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    instance-of v2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_17

    .line 1515
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1520
    :cond_b
    :goto_b
    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    .line 1522
    .local v1, "type":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_16

    const/16 v2, 0x14

    if-ne v1, v2, :cond_22

    .line 1528
    :cond_16
    :goto_16
    return-void

    .line 1516
    .end local v1    # "type":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_17
    instance-of v2, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_b

    .line 1517
    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_b

    .line 1525
    .restart local v1    # "type":I
    :cond_22
    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->addToSelectedMessages(Lorg/telegram/messenger/MessageObject;)V

    .line 1526
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateActionModeTitle()V

    .line 1527
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto :goto_16
.end method

.method private processSelectedOption(I)V
    .registers 20
    .param p1, "option"    # I

    .prologue
    .line 2329
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_7

    .line 2465
    :cond_6
    :goto_6
    return-void

    .line 2332
    :cond_7
    packed-switch p1, :pswitch_data_2d6

    .line 2464
    :cond_a
    :goto_a
    :pswitch_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_6

    .line 2334
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 2335
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_6

    .line 2338
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2339
    .local v14, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2340
    .local v9, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSureToContinue"

    const v2, 0x7f070654

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2341
    const-string v1, "Message"

    const v2, 0x7f070312

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2342
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$25;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2354
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2355
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_a

    .line 2360
    .end local v9    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v14    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :pswitch_6b
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2361
    .local v16, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 2362
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "forward_type"

    const/4 v2, 0x1

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2363
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2365
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2369
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v3, "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    new-instance v1, Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 2375
    .end local v3    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_b0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 2379
    :pswitch_c1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2380
    .local v15, "path":Ljava/lang/String;
    if-eqz v15, :cond_df

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_df

    .line 2381
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v17, "temp":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_df

    .line 2383
    const/4 v15, 0x0

    .line 2386
    .end local v17    # "temp":Ljava/io/File;
    :cond_df
    if-eqz v15, :cond_e7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f5

    .line 2387
    :cond_e7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2389
    :cond_f5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_107

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 2390
    :cond_107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_130

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_130

    .line 2391
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2392
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_6

    .line 2395
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_145

    const/4 v1, 0x1

    :goto_13e
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v15, v2, v1, v4, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_145
    const/4 v1, 0x0

    goto :goto_13e

    .line 2400
    .end local v15    # "path":Ljava/lang/String;
    :pswitch_147
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2401
    .restart local v15    # "path":Ljava/lang/String;
    if-eqz v15, :cond_165

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_165

    .line 2402
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2403
    .restart local v17    # "temp":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_165

    .line 2404
    const/4 v15, 0x0

    .line 2407
    .end local v17    # "temp":Ljava/io/File;
    :cond_165
    if-eqz v15, :cond_16d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17b

    .line 2408
    :cond_16d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2410
    :cond_17b
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2411
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2412
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2413
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ShareFile"

    const v4, 0x7f0704fe

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 2417
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "path":Ljava/lang/String;
    :pswitch_1b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2418
    .restart local v15    # "path":Ljava/lang/String;
    if-eqz v15, :cond_1d3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d3

    .line 2419
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2420
    .restart local v17    # "temp":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d3

    .line 2421
    const/4 v15, 0x0

    .line 2424
    .end local v17    # "temp":Ljava/io/File;
    :cond_1d3
    if-eqz v15, :cond_1db

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e9

    .line 2425
    :cond_1db
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2427
    :cond_1e9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_212

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_212

    .line 2428
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2429
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_6

    .line 2432
    :cond_212
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v15, v1, v2, v4, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2436
    .end local v15    # "path":Ljava/lang/String;
    :pswitch_21e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_247

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_247

    .line 2437
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2438
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_6

    .line 2441
    :cond_247
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v12

    .line 2442
    .local v12, "fileName":Ljava/lang/String;
    if-eqz v12, :cond_25b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_263

    .line 2443
    :cond_25b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 2445
    :cond_263
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2446
    .restart local v15    # "path":Ljava/lang/String;
    if-eqz v15, :cond_281

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_281

    .line 2447
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2448
    .restart local v17    # "temp":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_281

    .line 2449
    const/4 v15, 0x0

    .line 2452
    .end local v17    # "temp":Ljava/io/File;
    :cond_281
    if-eqz v15, :cond_289

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_297

    .line 2453
    :cond_289
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2455
    :cond_297
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_2bf

    const/4 v1, 0x3

    :goto_2a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_2c1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :goto_2ba
    invoke-static {v15, v4, v1, v12, v2}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2bf
    const/4 v1, 0x2

    goto :goto_2a6

    :cond_2c1
    const-string v2, ""

    goto :goto_2ba

    .line 2459
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :pswitch_2c4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    .line 2460
    .local v10, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/MessagesController;->saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_a

    .line 2332
    nop

    :pswitch_data_2d6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_6b
        :pswitch_b0
        :pswitch_c1
        :pswitch_a
        :pswitch_147
        :pswitch_1b5
        :pswitch_a
        :pswitch_a
        :pswitch_21e
        :pswitch_2c4
    .end packed-switch
.end method

.method private removeMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2764
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2765
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2772
    :cond_9
    :goto_9
    return-void

    .line 2768
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2769
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    if-eqz v1, :cond_9

    .line 2770
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    goto :goto_9
.end method

.method private removeUnreadPlane()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unreadMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1c

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    aput-boolean v3, v1, v3

    aput-boolean v3, v0, v2

    .line 1559
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first_unread_id:I

    .line 1560
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    .line 1561
    iput v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unread_to_load:I

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unreadMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->removeMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 1563
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->unreadMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1565
    :cond_1c
    return-void
.end method

.method private scrollToMessageId(IIZI)V
    .registers 31
    .param p1, "id"    # I
    .param p2, "fromMessageId"    # I
    .param p3, "select"    # Z
    .param p4, "loadIndex"    # I

    .prologue
    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    aget-object v3, v3, p4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1330
    .local v21, "object":Lorg/telegram/messenger/MessageObject;
    const/16 v22, 0x0

    .line 1331
    .local v22, "query":Z
    if-eqz v21, :cond_17f

    .line 1332
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1333
    .local v19, "index":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_17b

    .line 1334
    if-eqz p3, :cond_117

    .line 1335
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    .line 1339
    :goto_2b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getHeight()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getApproximateHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1340
    .local v24, "yOffset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    if-ne v3, v0, :cond_120

    .line 1341
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    add-int v5, v5, v24

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1345
    :goto_6f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    .line 1346
    const/16 v18, 0x0

    .line 1347
    .local v18, "found":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v17

    .line 1348
    .local v17, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_7d
    move/from16 v0, v17

    if-ge v2, v0, :cond_a5

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1350
    .local v23, "view":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_159

    move-object/from16 v16, v23

    .line 1351
    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1352
    .local v16, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v20

    .line 1353
    .local v20, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_177

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_177

    .line 1354
    const/16 v18, 0x1

    .line 1373
    .end local v2    # "a":I
    .end local v16    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v17    # "count":I
    .end local v18    # "found":Z
    .end local v19    # "index":I
    .end local v20    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v23    # "view":Landroid/view/View;
    .end local v24    # "yOffset":I
    :cond_a5
    :goto_a5
    if-eqz v22, :cond_104

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1383
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForReplyMessageLoad:Z

    .line 1384
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    .line 1385
    const/16 v3, -0x2710

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessagePosition:I

    .line 1386
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-nez p4, :cond_183

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    :goto_df
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_189

    const/16 v6, 0x1e

    :goto_e7
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    add-int/lit8 v25, v15, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZI)V

    .line 1391
    :cond_104
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->returnToMessageId:I

    .line 1392
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->returnToLoadIndex:I

    .line 1393
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->needSelectFromMessageId:Z

    .line 1394
    return-void

    .line 1337
    .restart local v19    # "index":I
    :cond_117
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    goto/16 :goto_2b

    .line 1343
    .restart local v24    # "yOffset":I
    :cond_120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    add-int v5, v5, v24

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_6f

    .line 1357
    .restart local v2    # "a":I
    .restart local v17    # "count":I
    .restart local v18    # "found":Z
    .restart local v23    # "view":Landroid/view/View;
    :cond_159
    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_177

    move-object/from16 v16, v23

    .line 1358
    check-cast v16, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 1359
    .local v16, "cell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v20

    .line 1360
    .restart local v20    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_177

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_177

    .line 1361
    const/16 v18, 0x1

    .line 1362
    goto/16 :goto_a5

    .line 1348
    .end local v16    # "cell":Lorg/telegram/ui/Cells/ChatActionCell;
    .end local v20    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_177
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7d

    .line 1367
    .end local v2    # "a":I
    .end local v17    # "count":I
    .end local v18    # "found":Z
    .end local v23    # "view":Landroid/view/View;
    .end local v24    # "yOffset":I
    :cond_17b
    const/16 v22, 0x1

    goto/16 :goto_a5

    .line 1370
    .end local v19    # "index":I
    :cond_17f
    const/16 v22, 0x1

    goto/16 :goto_a5

    .line 1388
    :cond_183
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->mergeDialogId:J

    goto/16 :goto_df

    :cond_189
    const/16 v6, 0x14

    goto/16 :goto_e7
.end method

.method private startDownloading(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3446
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3447
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_running"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3448
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 3449
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 3450
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loadFile(Lorg/telegram/tgnet/TLObject;)V

    .line 3451
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 3452
    .local v2, "pathToMessage":Ljava/io/File;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 3453
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 3457
    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "pathToMessage":Ljava/io/File;
    :cond_47
    return-void
.end method

.method private stopDownloading()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3460
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3461
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_running"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4b

    .line 3463
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3464
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_3a

    .line 3465
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 3466
    .local v0, "attach":Lorg/telegram/tgnet/TLObject;
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_3d

    .line 3467
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 3462
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 3468
    .restart local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    :cond_3d
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_3a

    .line 3469
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .end local v0    # "attach":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_3a

    .line 3474
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4b
    return-void
.end method

.method private updateActionModeTitle()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1537
    :cond_a
    :goto_a
    return-void

    .line 1534
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1535
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto :goto_a
.end method

.method private updateMessagesVisisblePart()V
    .registers 12

    .prologue
    .line 1306
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v10, :cond_5

    .line 1326
    :cond_4
    return-void

    .line 1309
    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 1310
    .local v3, "count":I
    const/4 v1, 0x0

    .line 1311
    .local v1, "additionalTop":I
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v4

    .line 1312
    .local v4, "height":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    if-ge v0, v3, :cond_4

    .line 1313
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1314
    .local v7, "view":Landroid/view/View;
    instance-of v10, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v10, :cond_3a

    move-object v5, v7

    .line 1315
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1316
    .local v5, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTop()I

    move-result v6

    .line 1317
    .local v6, "top":I
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBottom()I

    move-result v2

    .line 1318
    .local v2, "bottom":I
    if-ltz v6, :cond_3d

    const/4 v9, 0x0

    .line 1319
    .local v9, "viewTop":I
    :goto_2d
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMeasuredHeight()I

    move-result v8

    .line 1320
    .local v8, "viewBottom":I
    if-le v8, v4, :cond_35

    .line 1321
    add-int v8, v9, v4

    .line 1323
    :cond_35
    sub-int v10, v8, v9

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->setVisiblePart(II)V

    .line 1312
    .end local v2    # "bottom":I
    .end local v5    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v6    # "top":I
    .end local v8    # "viewBottom":I
    .end local v9    # "viewTop":I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1318
    .restart local v2    # "bottom":I
    .restart local v5    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v6    # "top":I
    :cond_3d
    neg-int v9, v6

    goto :goto_2d
.end method

.method private updateVisibleRows()V
    .registers 15

    .prologue
    .line 2545
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v7, :cond_5

    .line 2582
    :cond_4
    return-void

    .line 2548
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2549
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c
    if-ge v0, v2, :cond_4

    .line 2550
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2551
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_be

    move-object v1, v6

    .line 2552
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2554
    .local v1, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    const/4 v3, 0x0

    .line 2555
    .local v3, "disableSelection":Z
    const/4 v5, 0x0

    .line 2556
    .local v5, "selected":Z
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 2557
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 2558
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_a6

    const/4 v7, 0x0

    :goto_36
    aget-object v7, v8, v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 2559
    const-string v7, "chat_selectedBackground"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2560
    const/4 v5, 0x1

    .line 2564
    :goto_50
    const/4 v3, 0x1

    .line 2569
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_51
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v8

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 2570
    if-nez v3, :cond_b2

    const/4 v7, 0x1

    move v8, v7

    :goto_64
    if-eqz v3, :cond_b5

    if-eqz v5, :cond_b5

    const/4 v7, 0x1

    :goto_69
    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 2571
    iget v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_b7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_b7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->highlightMessageId:I

    if-ne v7, v8, :cond_b7

    const/4 v7, 0x1

    :goto_86
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 2572
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_b9

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b9

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b9

    .line 2573
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    .line 2549
    .end local v1    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v3    # "disableSelection":Z
    .end local v5    # "selected":Z
    :cond_a2
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 2558
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v3    # "disableSelection":Z
    .restart local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "selected":Z
    :cond_a6
    const/4 v7, 0x1

    goto :goto_36

    .line 2562
    :cond_a8
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_50

    .line 2566
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_ad
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 2570
    :cond_b2
    const/4 v7, 0x0

    move v8, v7

    goto :goto_64

    :cond_b5
    const/4 v7, 0x0

    goto :goto_69

    .line 2571
    :cond_b7
    const/4 v7, 0x0

    goto :goto_86

    .line 2575
    :cond_b9
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto :goto_a2

    .line 2577
    .end local v1    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v3    # "disableSelection":Z
    .end local v5    # "selected":Z
    :cond_be
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v7, :cond_a2

    move-object v1, v6

    .line 2578
    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2579
    .local v1, "cell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_a2
.end method


# virtual methods
.method public DM_DeleteAll()V
    .registers 3

    .prologue
    .line 3542
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$29;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3552
    return-void
.end method

.method public DM_DeleteDownloaded(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3511
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$28;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3539
    return-void
.end method

.method public DM_DeleteMessage(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3495
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$27;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3508
    return-void
.end method

.method public DM_LoadMessagesByClassGuid(I)V
    .registers 4
    .param p1, "classGuid"    # I

    .prologue
    .line 3555
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3606
    return-void
.end method

.method public allowCaption()Z
    .registers 2

    .prologue
    .line 2622
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 2709
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 508
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_b
    const/16 v3, 0x8

    if-ge v10, v3, :cond_20

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 512
    .end local v10    # "a":I
    :cond_20
    const/4 v10, 0x1

    .restart local v10    # "a":I
    :goto_21
    if-ltz v10, :cond_38

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 512
    add-int/lit8 v10, v10, -0x1

    goto :goto_21

    .line 516
    :cond_38
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    .line 518
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->hasOwnBackground:Z

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v3, :cond_54

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    .line 521
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 524
    :cond_54
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "DownloadManager"

    const v5, 0x7f0706bc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v17

    .line 701
    .local v17, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v3, 0x0

    const v4, 0x7f0200e7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x1

    const-string v5, "DownloaderDelDownloaded"

    const v6, 0x7f0706c0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x2

    const-string v5, "DownloaderDelAll"

    const v6, 0x7f0706bf

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x3

    const-string v5, "DownloaderSettings"

    const v6, 0x7f0706c6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v11

    .line 710
    .local v11, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v3, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v4, "actionBarActionModeDefaultIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$5;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 722
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$6;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$7;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 767
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "actionBarActionModeDefaultIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "Edit"

    const v5, 0x7f0701ea

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "actionBarActionModeDefaultIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v4, 0xa

    const v5, 0x7f0200de

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v4, 0xb

    const v5, 0x7f0200e5

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v4, 0xc

    const v5, 0x7f0200e4

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v4, 0xd

    const v5, 0x7f0200df

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v3, :cond_932

    const/4 v3, 0x0

    :goto_273
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 785
    const/16 v3, 0xd

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    if-nez v3, :cond_936

    const/4 v3, 0x0

    :goto_283
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 786
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->checkActionBarMenu()V

    .line 789
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 912
    .local v12, "contentView":Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 914
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$9;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 924
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 925
    .local v14, "emptyView":Landroid/widget/TextView;
    const-string v3, "DownloadQueueIsEmpty"

    const v4, 0x7f0706bd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 927
    const/16 v3, 0x11

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 928
    const-string v3, "chat_serviceText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    const v3, 0x7f020265

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 930
    invoke-virtual {v14}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 931
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 932
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v14, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$10;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 949
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$11;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$12;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$13;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V

    .line 1036
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView2:Landroid/view/View;

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView2:Landroid/view/View;

    const v4, 0x7f020266

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView2:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView2:Landroid/view/View;

    const/16 v5, 0x24

    const/16 v6, 0x24

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const-string v4, "chat_serviceText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x32

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    const-string v4, "chat_topPanelTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertNameTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    const-string v4, "chat_topPanelMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41b80000    # 23.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    new-instance v18, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$15;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    .line 1113
    .local v18, "replyLayout":Landroid/widget/FrameLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1115
    new-instance v16, Landroid/view/View;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1116
    .local v16, "lineView":Landroid/view/View;
    const v3, -0x171718

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1117
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyIconImageView:Landroid/widget/ImageView;

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyIconImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyIconImageView:Landroid/widget/ImageView;

    const/16 v4, 0x34

    const/16 v5, 0x2e

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "chat_replyPanelClose"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    const v4, 0x7f0201df

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v3, 0x34

    const/high16 v4, 0x42380000    # 46.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyCloseImageView:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$16;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "chat_replyPanelName"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyNameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    const/4 v3, -0x1

    const/high16 v4, 0x41900000    # 18.0f

    const/16 v5, 0x33

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x42500000    # 52.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "chat_replyPanelMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    const/4 v3, -0x1

    const/high16 v4, 0x41900000    # 18.0f

    const/16 v5, 0x33

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x42500000    # 52.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v19, v0

    const/16 v3, 0x22

    const/high16 v4, 0x42080000    # 34.0f

    const/16 v5, 0x33

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanel:Landroid/widget/FrameLayout;

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanel:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanel:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/4 v3, -0x2

    const/high16 v4, 0x42a30000    # 81.5f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42180000    # 38.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$17;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$18;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setDisallowInterceptTouchEvents(Z)V

    .line 1170
    new-instance v15, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1171
    .local v15, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/high16 v6, 0x429c0000    # 78.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanelArrow:Landroid/widget/ImageView;

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanelArrow:Landroid/widget/ImageView;

    const v4, 0x7f02025d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanelArrow:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "chat_stickersHintPanel"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanel:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersPanelArrow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/high16 v6, 0x42540000    # 53.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    new-instance v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x38

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->downloaderRunning:Z

    if-eqz v3, :cond_93a

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const-string v4, "StopDownloader"

    const v5, 0x7f0707e2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    :goto_867
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const-string v4, "chat_secretChatStatusText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->updateRows()V

    .line 1223
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loading:Z

    if-eqz v3, :cond_94e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_94e

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_94c

    const/4 v3, 0x0

    :goto_8d3
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1231
    :goto_8de
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_8ea

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-eqz v3, :cond_90e

    .line 1232
    :cond_8ea
    new-instance v19, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v3, -0x1

    const/high16 v4, 0x421c0000    # 39.0f

    const/16 v5, 0x33

    const/4 v6, 0x0

    const/high16 v7, -0x3df00000    # -36.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    :cond_90e
    :try_start_90e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_923

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V
    :try_end_923
    .catch Ljava/lang/Throwable; {:try_start_90e .. :try_end_923} :catch_963

    .line 1242
    :cond_923
    :goto_923
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayoutInternal()Z

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 784
    .end local v12    # "contentView":Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .end local v14    # "emptyView":Landroid/widget/TextView;
    .end local v15    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v16    # "lineView":Landroid/view/View;
    .end local v18    # "replyLayout":Landroid/widget/FrameLayout;
    :cond_932
    const/16 v3, 0x8

    goto/16 :goto_273

    .line 785
    :cond_936
    const/16 v3, 0x8

    goto/16 :goto_283

    .line 1202
    .restart local v12    # "contentView":Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .restart local v14    # "emptyView":Landroid/widget/TextView;
    .restart local v15    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .restart local v16    # "lineView":Landroid/view/View;
    .restart local v18    # "replyLayout":Landroid/widget/FrameLayout;
    :cond_93a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;

    const-string v4, "StartDownloader"

    const v5, 0x7f0707dd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_867

    .line 1224
    :cond_94c
    const/4 v3, 0x4

    goto :goto_8d3

    .line 1227
    :cond_94e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_8de

    .line 1239
    :catch_963
    move-exception v13

    .line 1240
    .local v13, "e":Ljava/lang/Throwable;
    const-string v3, "tmessages"

    invoke-static {v3, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_923
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 52
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1569
    sget v44, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_41d

    .line 1570
    const/16 v44, 0xa

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3ce

    .line 1571
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1572
    .local v19, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1575
    const/16 v44, 0x2

    aget-object v30, p2, v44

    check-cast v30, Ljava/util/ArrayList;

    .line 1576
    .local v30, "messArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v44, 0x4

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1577
    .local v18, "fnid":I
    if-eqz v18, :cond_e8

    .line 1578
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first_unread_id:I

    .line 1579
    const/16 v44, 0x5

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    .line 1587
    :goto_63
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first_unread_id:I

    .line 1588
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    .line 1590
    const/16 v44, 0x8

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1591
    .local v26, "load_type":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    move/from16 v44, v0

    if-eqz v44, :cond_110

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->e:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->g:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->f:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->clear()V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1597
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_b4
    const/16 v44, 0x2

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_108

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    move-object/from16 v44, v0

    const v45, 0x7fffffff

    aput v45, v44, v20

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    move-object/from16 v44, v0

    const/high16 v45, -0x80000000

    aput v45, v44, v20

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    move-object/from16 v44, v0

    const/high16 v45, -0x80000000

    aput v45, v44, v20

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput v45, v44, v20

    .line 1597
    add-int/lit8 v20, v20, 0x1

    goto :goto_b4

    .line 1582
    .end local v20    # "i":I
    .end local v26    # "load_type":I
    :cond_e8
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_f6

    .line 1583
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first_unread_id:I

    .line 1585
    :cond_f6
    const/16 v44, 0x5

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->last_message_id:I

    goto/16 :goto_63

    .line 1603
    .restart local v20    # "i":I
    .restart local v26    # "load_type":I
    :cond_108
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    .line 1606
    .end local v20    # "i":I
    :cond_110
    const/16 v37, 0x0

    .line 1612
    .local v37, "newRowsCount":I
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_114
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v23

    move/from16 v1, v44

    if-ge v0, v1, :cond_2ff

    .line 1613
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1614
    .local v32, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_150

    .line 1615
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    :cond_150
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->e:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v44

    if-lez v44, :cond_1ba

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->min(II)I

    move-result v46

    aput v46, v44, v45

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v46

    aput v46, v44, v45

    .line 1623
    :cond_1ba
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v44, v0

    if-eqz v44, :cond_22a

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v46, v46, v47

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v47, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v46

    aput v46, v44, v45

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v44, v44, v45

    if-eqz v44, :cond_214

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget v45, v45, v46

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_22a

    .line 1626
    :cond_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v46, v0

    aput v46, v44, v45

    .line 1630
    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1631
    .local v14, "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v14, :cond_2cf

    .line 1632
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .restart local v14    # "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v11, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    .line 1635
    .local v11, "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1636
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v45, v0

    const v46, 0x15180

    rem-int v45, v45, v46

    sub-int v44, v44, v45

    move/from16 v0, v44

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1637
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1638
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-direct {v12, v11, v0, v1}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 1639
    .local v12, "dateObj":Lorg/telegram/messenger/MessageObject;
    const/16 v44, 0xa

    move/from16 v0, v44

    iput v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    .line 1640
    const/16 v44, 0x1

    move/from16 v0, v44

    iput v0, v12, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1641
    const/16 v44, 0x1

    move/from16 v0, v26

    move/from16 v1, v44

    if-ne v0, v1, :cond_2f3

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1646
    :goto_2cd
    add-int/lit8 v37, v37, 0x1

    .line 1648
    .end local v11    # "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v12    # "dateObj":Lorg/telegram/messenger/MessageObject;
    :cond_2cf
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1612
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_114

    .line 1644
    .restart local v11    # "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v12    # "dateObj":Lorg/telegram/messenger/MessageObject;
    :cond_2f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2cd

    .line 1651
    .end local v11    # "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v12    # "dateObj":Lorg/telegram/messenger/MessageObject;
    .end local v14    # "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2ff
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_307
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_32d

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1652
    .local v28, "longValue":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    goto :goto_307

    .line 1654
    .end local v28    # "longValue":J
    :cond_32d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first:Z

    move/from16 v44, v0

    if-eqz v44, :cond_345

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_33d

    .line 1658
    :cond_33d
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first:Z

    .line 1662
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->h:Ljava/util/HashSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->size()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->f:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3fa

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_372

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    invoke-virtual/range {v44 .. v45}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1666
    :cond_372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_3cf

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    new-instance v45, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$21;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$21;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    invoke-static/range {v44 .. v45}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1683
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->moveScrollToLastMessage()V

    .line 1934
    .end local v18    # "fnid":I
    .end local v19    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v23    # "j":I
    .end local v26    # "load_type":I
    .end local v30    # "messArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "newRowsCount":I
    :cond_3ce
    :goto_3ce
    return-void

    .line 1686
    .restart local v18    # "fnid":I
    .restart local v19    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .restart local v23    # "j":I
    .restart local v26    # "load_type":I
    .restart local v30    # "messArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v37    # "newRowsCount":I
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    aput-boolean v46, v44, v45

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1689
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto :goto_3ce

    .line 1692
    :cond_3fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    invoke-virtual/range {v44 .. v45}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3ce

    .line 1698
    .end local v18    # "fnid":I
    .end local v19    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v23    # "j":I
    .end local v26    # "load_type":I
    .end local v30    # "messArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "newRowsCount":I
    :cond_41d
    sget v44, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_46b

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_436

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1702
    :cond_436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_447

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyObjectTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/ActionBar/SimpleTextView;->invalidate()V

    .line 1705
    :cond_447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_458

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertTextView:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->invalidate()V

    .line 1708
    :cond_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/ActionBar/SimpleTextView;->invalidate()V

    goto/16 :goto_3ce

    .line 1711
    :cond_46b
    sget v44, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_47b

    sget v44, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_4c4

    .line 1712
    :cond_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v10

    .line 1714
    .local v10, "count":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_48e
    if-ge v4, v10, :cond_3ce

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    .line 1716
    .local v43, "view":Landroid/view/View;
    move-object/from16 v0, v43

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v44, v0

    if-eqz v44, :cond_4c1

    move-object/from16 v7, v43

    .line 1717
    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1718
    .local v7, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v32

    .line 1719
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v32, :cond_4c1

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v44

    if-nez v44, :cond_4ba

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v44

    if-eqz v44, :cond_4c1

    .line 1720
    :cond_4ba
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(Z)V

    .line 1714
    .end local v7    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_48e

    .line 1725
    .end local v4    # "a":I
    .end local v10    # "count":I
    .end local v43    # "view":Landroid/view/View;
    :cond_4c4
    sget v44, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_545

    .line 1726
    const/16 v44, 0x0

    aget-object v35, p2, v44

    check-cast v35, Ljava/lang/Integer;

    .line 1727
    .local v35, "mid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v10

    .line 1729
    .restart local v10    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_4e5
    if-ge v4, v10, :cond_3ce

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    .line 1731
    .restart local v43    # "view":Landroid/view/View;
    move-object/from16 v0, v43

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v44, v0

    if-eqz v44, :cond_542

    move-object/from16 v7, v43

    .line 1732
    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1733
    .restart local v7    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v44

    if-eqz v44, :cond_542

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v44

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_542

    .line 1734
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v41

    .line 1735
    .local v41, "playing":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v40

    .line 1736
    .local v40, "player":Lorg/telegram/messenger/MessageObject;
    if-eqz v40, :cond_3ce

    .line 1737
    move-object/from16 v0, v40

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1738
    move-object/from16 v0, v40

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, v41

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1739
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateAudioProgress()V

    goto/16 :goto_3ce

    .line 1729
    .end local v7    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v40    # "player":Lorg/telegram/messenger/MessageObject;
    .end local v41    # "playing":Lorg/telegram/messenger/MessageObject;
    :cond_542
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e5

    .line 1746
    .end local v4    # "a":I
    .end local v10    # "count":I
    .end local v35    # "mid":Ljava/lang/Integer;
    .end local v43    # "view":Landroid/view/View;
    :cond_545
    sget v44, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_6c9

    .line 1747
    const/16 v44, 0x0

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1748
    .local v16, "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-wide/from16 v44, v0

    cmp-long v44, v44, v16

    if-nez v44, :cond_3ce

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->clear()V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->clear()V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1752
    const/4 v4, 0x1

    .restart local v4    # "a":I
    :goto_57d
    if-ltz v4, :cond_5cc

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v4

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxMessageId:[I

    move-object/from16 v44, v0

    const v45, 0x7fffffff

    aput v45, v44, v4

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minMessageId:[I

    move-object/from16 v44, v0

    const/high16 v45, -0x80000000

    aput v45, v44, v4

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->maxDate:[I

    move-object/from16 v44, v0

    const/high16 v45, -0x80000000

    aput v45, v44, v4

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->minDate:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput v45, v44, v4

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v4

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v4

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    .line 1752
    add-int/lit8 v4, v4, -0x1

    goto :goto_57d

    .line 1761
    :cond_5cc
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botButtons:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5ed

    .line 1765
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->botButtons:Lorg/telegram/messenger/MessageObject;

    .line 1768
    :cond_5ed
    const/16 v44, 0x1

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Boolean;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-eqz v44, :cond_6a6

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    if-eqz v44, :cond_62d

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->botInfoRow:I
    invoke-static/range {v44 .. v44}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v44

    const/16 v46, -0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_655

    const/16 v44, 0x0

    :goto_61b
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1773
    :cond_62d
    const/4 v4, 0x0

    :goto_62e
    const/16 v44, 0x2

    move/from16 v0, v44

    if-ge v4, v0, :cond_658

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->endReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-boolean v45, v44, v4

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cacheEndReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-boolean v45, v44, v4

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwardEndReached:[Z

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aput-boolean v45, v44, v4

    .line 1773
    add-int/lit8 v4, v4, 0x1

    goto :goto_62e

    .line 1770
    :cond_655
    const/16 v44, 0x4

    goto :goto_61b

    .line 1778
    :cond_658
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->first:Z

    .line 1779
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    .line 1780
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loading:Z

    .line 1781
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    .line 1782
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->needSelectFromMessageId:Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    :cond_693
    :goto_693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3ce

    .line 1786
    :cond_6a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_693

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    invoke-virtual/range {v44 .. v45}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_693

    .line 1796
    .end local v4    # "a":I
    .end local v16    # "did":J
    :cond_6c9
    sget v44, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_734

    .line 1797
    const/16 v44, 0x0

    aget-object v36, p2, v44

    check-cast v36, Landroid/util/SparseArray;

    .line 1798
    .local v36, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v8, 0x0

    .line 1799
    .local v8, "changed":Z
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_6da
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v44

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_72d

    .line 1800
    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 1801
    .local v24, "key":I
    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1802
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_6fa
    :goto_6fa
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_72a

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1803
    .restart local v35    # "mid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v45, v45, v46

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1804
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v32, :cond_6fa

    .line 1805
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v45, v0

    move/from16 v0, v24

    move-object/from16 v1, v45

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 1806
    const/4 v8, 0x1

    goto :goto_6fa

    .line 1799
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v35    # "mid":Ljava/lang/Integer;
    :cond_72a
    add-int/lit8 v20, v20, 0x1

    goto :goto_6da

    .line 1810
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "key":I
    :cond_72d
    if-eqz v8, :cond_3ce

    .line 1811
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_3ce

    .line 1813
    .end local v8    # "changed":Z
    .end local v20    # "i":I
    .end local v36    # "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_734
    sget v44, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_78b

    .line 1814
    const/16 v44, 0x0

    aget-object v32, p2, v44

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1815
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v10

    .line 1817
    .restart local v10    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_755
    if-ge v4, v10, :cond_3ce

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    .line 1819
    .restart local v43    # "view":Landroid/view/View;
    move-object/from16 v0, v43

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v44, v0

    if-eqz v44, :cond_788

    move-object/from16 v7, v43

    .line 1820
    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1821
    .restart local v7    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v33

    .line 1822
    .local v33, "messageObject1":Lorg/telegram/messenger/MessageObject;
    if-eqz v33, :cond_788

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v44

    if-nez v44, :cond_781

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v44

    if-eqz v44, :cond_788

    .line 1823
    :cond_781
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(Z)V

    .line 1817
    .end local v7    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v33    # "messageObject1":Lorg/telegram/messenger/MessageObject;
    :cond_788
    add-int/lit8 v4, v4, 0x1

    goto :goto_755

    .line 1828
    .end local v4    # "a":I
    .end local v10    # "count":I
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v43    # "view":Landroid/view/View;
    :cond_78b
    sget v44, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_7eb

    .line 1829
    const/16 v44, 0x0

    aget-object v32, p2, v44

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1830
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 1831
    .local v15, "existMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v15, :cond_7e6

    .line 1832
    iget-object v0, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1833
    iget-object v0, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1834
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1836
    :cond_7e6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_3ce

    .line 1837
    .end local v15    # "existMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_7eb
    sget v44, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_a4f

    .line 1838
    const/16 v44, 0x0

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1839
    .restart local v16    # "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-wide/from16 v44, v0

    cmp-long v44, v16, v44

    if-eqz v44, :cond_811

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->mergeDialogId:J

    move-wide/from16 v44, v0

    cmp-long v44, v16, v44

    if-nez v44, :cond_3ce

    .line 1842
    :cond_811
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-wide/from16 v44, v0

    cmp-long v44, v16, v44

    if-nez v44, :cond_987

    const/16 v25, 0x0

    .line 1843
    .local v25, "loadIndex":I
    :goto_81d
    const/4 v8, 0x0

    .line 1844
    .restart local v8    # "changed":Z
    const/16 v27, 0x0

    .line 1845
    .local v27, "mediaUpdated":Z
    const/16 v44, 0x1

    aget-object v34, p2, v44

    check-cast v34, Ljava/util/ArrayList;

    .line 1846
    .local v34, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_827
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v4, v0, :cond_a22

    .line 1847
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1848
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v25

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/telegram/messenger/MessageObject;

    .line 1849
    .local v39, "old":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v44, v0

    if-eqz v44, :cond_86f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v44

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_86f

    .line 1850
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1852
    :cond_86f
    if-eqz v39, :cond_983

    .line 1853
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    move/from16 v44, v0

    if-ltz v44, :cond_98b

    .line 1854
    if-nez v27, :cond_891

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move/from16 v44, v0

    if-eqz v44, :cond_891

    .line 1855
    const/16 v27, 0x1

    .line 1857
    :cond_891
    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8c2

    .line 1858
    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1859
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v44, v0

    if-eqz v44, :cond_8c2

    .line 1860
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1863
    :cond_8c2
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1864
    move-object/from16 v0, v39

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 1865
    move-object/from16 v0, v39

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v25

    invoke-virtual/range {v39 .. v39}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    :goto_90b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 1871
    .local v21, "index":I
    if-ltz v21, :cond_983

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1873
    .local v13, "dayArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v22, -0x1

    .line 1874
    .local v22, "index2":I
    if-eqz v13, :cond_937

    .line 1875
    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 1877
    :cond_937
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    move/from16 v44, v0

    if-ltz v44, :cond_9a0

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v21

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    if-eqz v44, :cond_979

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v45, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    add-int v45, v45, v46

    sub-int v45, v45, v21

    add-int/lit8 v45, v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 1882
    :cond_979
    if-ltz v22, :cond_982

    .line 1883
    move/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_982
    :goto_982
    const/4 v8, 0x1

    .line 1846
    .end local v13    # "dayArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "index":I
    .end local v22    # "index2":I
    :cond_983
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_827

    .line 1842
    .end local v4    # "a":I
    .end local v8    # "changed":Z
    .end local v25    # "loadIndex":I
    .end local v27    # "mediaUpdated":Z
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v34    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v39    # "old":Lorg/telegram/messenger/MessageObject;
    :cond_987
    const/16 v25, 0x1

    goto/16 :goto_81d

    .line 1868
    .restart local v4    # "a":I
    .restart local v8    # "changed":Z
    .restart local v25    # "loadIndex":I
    .restart local v27    # "mediaUpdated":Z
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v34    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v39    # "old":Lorg/telegram/messenger/MessageObject;
    :cond_98b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    aget-object v44, v44, v25

    invoke-virtual/range {v39 .. v39}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_90b

    .line 1886
    .restart local v13    # "dayArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v21    # "index":I
    .restart local v22    # "index2":I
    :cond_9a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    if-eqz v44, :cond_9d8

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v45, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    add-int v45, v45, v46

    sub-int v45, v45, v21

    add-int/lit8 v45, v45, -0x1

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    .line 1890
    :cond_9d8
    if-ltz v22, :cond_982

    .line 1891
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1892
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_982

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesByDays:Ljava/util/HashMap;

    move-object/from16 v44, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-object/from16 v45, v0

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->messagesStartRow:I
    invoke-static/range {v45 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$5200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    add-int v45, v45, v46

    invoke-virtual/range {v44 .. v45}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    goto/16 :goto_982

    .line 1903
    .end local v13    # "dayArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "index":I
    .end local v22    # "index2":I
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v39    # "old":Lorg/telegram/messenger/MessageObject;
    :cond_a22
    if-eqz v8, :cond_3ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v44, v0

    if-eqz v44, :cond_3ce

    .line 1904
    if-eqz v27, :cond_3ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_3ce

    .line 1905
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->moveScrollToLastMessage()V

    goto/16 :goto_3ce

    .line 1908
    .end local v4    # "a":I
    .end local v8    # "changed":Z
    .end local v16    # "did":J
    .end local v25    # "loadIndex":I
    .end local v27    # "mediaUpdated":Z
    .end local v34    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_a4f
    sget v44, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_a70

    .line 1909
    const/16 v44, 0x0

    aget-object v44, p2, v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1910
    .restart local v16    # "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-wide/from16 v44, v0

    cmp-long v44, v16, v44

    if-nez v44, :cond_3ce

    .line 1911
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_3ce

    .line 1913
    .end local v16    # "did":J
    :cond_a70
    sget v44, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_3ce

    .line 1914
    const/16 v44, 0x0

    aget-object v9, p2, v44

    check-cast v9, Landroid/util/SparseArray;

    .line 1915
    .local v9, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 1916
    .local v6, "array":Landroid/util/SparseIntArray;
    if-eqz v6, :cond_3ce

    .line 1917
    const/16 v42, 0x0

    .line 1918
    .local v42, "updated":Z
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_a96
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v4, v0, :cond_ae1

    .line 1919
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v31

    .line 1920
    .local v31, "messageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messagesDict:[Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/MessageObject;

    .line 1921
    .restart local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v32, :cond_ade

    .line 1922
    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v38

    .line 1923
    .local v38, "newValue":I
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v44, v0

    move/from16 v0, v38

    move/from16 v1, v44

    if-le v0, v1, :cond_ade

    .line 1924
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v44, v0

    move/from16 v0, v38

    move-object/from16 v1, v44

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 1925
    const/16 v42, 0x1

    .line 1918
    .end local v38    # "newValue":I
    :cond_ade
    add-int/lit8 v4, v4, 0x1

    goto :goto_a96

    .line 1929
    .end local v31    # "messageId":I
    .end local v32    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_ae1
    if-eqz v42, :cond_3ce

    .line 1930
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_3ce
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .registers 23
    .param p1, "activity"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    .line 2469
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-eqz v3, :cond_6b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2470
    :cond_2a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2471
    .local v5, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6c

    .line 2472
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;

    .line 2492
    :goto_41
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    cmp-long v3, p2, v6

    if-eqz v3, :cond_fe

    .line 2493
    move-wide/from16 v0, p2

    long-to-int v13, v0

    .line 2494
    .local v13, "lower_part":I
    if-eqz v13, :cond_f9

    .line 2495
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2496
    .local v9, "args":Landroid/os/Bundle;
    const-string v3, "scrollToTopOnResume"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToTopOnResume:Z

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2497
    if-lez v13, :cond_cb

    .line 2498
    const-string v3, "user_id"

    invoke-virtual {v9, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2502
    :cond_63
    :goto_63
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 2527
    .end local v5    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v9    # "args":Landroid/os/Bundle;
    .end local v13    # "lower_part":I
    :cond_6b
    :goto_6b
    return-void

    .line 2475
    .restart local v5    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_6c
    const/4 v8, 0x1

    .local v8, "a":I
    :goto_6d
    if-ltz v8, :cond_bd

    .line 2476
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2477
    .local v12, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2478
    const/4 v10, 0x0

    .local v10, "b":I
    :goto_82
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_a8

    .line 2479
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 2480
    .local v11, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v3, v3, v8

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 2481
    .local v14, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v14, :cond_a5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a5

    .line 2482
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2478
    :cond_a5
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 2485
    .end local v11    # "id":Ljava/lang/Integer;
    .end local v14    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2486
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2475
    add-int/lit8 v8, v8, -0x1

    goto :goto_6d

    .line 2488
    .end local v10    # "b":I
    .end local v12    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_bd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    .line 2489
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    goto/16 :goto_41

    .line 2499
    .end local v8    # "a":I
    .restart local v9    # "args":Landroid/os/Bundle;
    .restart local v13    # "lower_part":I
    :cond_cb
    if-gez v13, :cond_63

    .line 2500
    const-string v3, "chat_id"

    neg-int v4, v13

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_63

    .line 2506
    :cond_d4
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 2507
    .local v2, "chatActivity":Lorg/telegram/ui/ChatActivity;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 2508
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 2509
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2510
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->removeSelfFromStack()V

    goto/16 :goto_6b

    .line 2513
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_6b

    .line 2516
    .end local v2    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v9    # "args":Landroid/os/Bundle;
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_6b

    .line 2519
    .end local v13    # "lower_part":I
    :cond_fe
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 2520
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->moveScrollToLastMessage()V

    .line 2521
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 2522
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2524
    :cond_111
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    goto/16 :goto_6b
.end method

.method public dismissCurrentDialig()V
    .registers 3

    .prologue
    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->visibleDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-ne v0, v1, :cond_1c

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 2014
    :goto_1b
    return-void

    .line 2013
    :cond_1c
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    goto :goto_1b
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eq p1, v0, :cond_c

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDialogId()J
    .registers 3

    .prologue
    .line 1250
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    return-wide v0
.end method

.method public getDownloadObject(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3419
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3420
    .local v0, "media":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    if-eqz v0, :cond_46

    .line 3421
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_d

    .line 3422
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3434
    :goto_c
    return-object v1

    .line 3424
    :cond_d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1c

    .line 3425
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_c

    .line 3427
    :cond_1c
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_35

    .line 3428
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 3430
    :cond_35
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_46

    .line 3431
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_c

    .line 3434
    :cond_46
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto :goto_c
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 3414
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 20
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2633
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 2635
    .local v6, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_9
    if-ge v2, v6, :cond_ea

    .line 2636
    const/4 v7, 0x0

    .line 2637
    .local v7, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2638
    .local v11, "view":Landroid/view/View;
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_8e

    .line 2639
    if-eqz p1, :cond_31

    move-object v4, v11

    .line 2640
    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2641
    .local v4, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    .line 2642
    .local v8, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_31

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    if-ne v12, v13, :cond_31

    .line 2643
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 2666
    .end local v4    # "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v8    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_31
    :goto_31
    if-eqz v7, :cond_e6

    .line 2667
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 2668
    .local v5, "coords":[I
    invoke-virtual {v11, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2669
    new-instance v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v9}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 2670
    .local v9, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v12, 0x0

    aget v12, v5, v12

    iput v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 2671
    const/4 v12, 0x1

    aget v13, v5, v12

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v12, v14, :cond_e2

    const/4 v12, 0x0

    :goto_4d
    sub-int v12, v13, v12

    iput v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 2672
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 2673
    iput-object v7, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2674
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 2675
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v12

    iput v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 2676
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;

    if-eqz v12, :cond_75

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_85

    :cond_75
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_8d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8d

    .line 2677
    :cond_85
    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v9, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 2682
    .end local v5    # "coords":[I
    .end local v7    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v9    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .end local v11    # "view":Landroid/view/View;
    :cond_8d
    :goto_8d
    return-object v9

    .line 2646
    .restart local v7    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .restart local v11    # "view":Landroid/view/View;
    :cond_8e
    instance-of v12, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v12, :cond_31

    move-object v4, v11

    .line 2647
    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2648
    .local v4, "cell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    .line 2649
    .restart local v8    # "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_31

    .line 2650
    if-eqz p1, :cond_ac

    .line 2651
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    if-ne v12, v13, :cond_31

    .line 2652
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    goto :goto_31

    .line 2654
    :cond_ac
    if-eqz p2, :cond_31

    iget-object v12, v8, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v12, :cond_31

    .line 2655
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_b3
    iget-object v12, v8, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_31

    .line 2656
    iget-object v12, v8, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2657
    .local v10, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_df

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v12, v13, :cond_df

    .line 2658
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 2659
    goto/16 :goto_31

    .line 2655
    :cond_df
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 2671
    .end local v3    # "b":I
    .end local v4    # "cell":Lorg/telegram/ui/Cells/ChatActionCell;
    .end local v8    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v10    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v5    # "coords":[I
    .restart local v9    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_e2
    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_4d

    .line 2635
    .end local v5    # "coords":[I
    .end local v9    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 2682
    .end local v7    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v11    # "view":Landroid/view/View;
    :cond_ea
    const/4 v9, 0x0

    goto :goto_8d
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 2719
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2687
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2700
    const/4 v0, 0x0

    return v0
.end method

.method public needDelayOpenAnimation()Z
    .registers 2

    .prologue
    .line 1938
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->firstLoading:Z

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1542
    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2531
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2532
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_e
    if-ltz v0, :cond_21

    .line 2533
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2534
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2532
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 2536
    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2537
    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->cantDeleteMessagesCount:I

    .line 2538
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateVisibleRows()V

    .line 2541
    .end local v0    # "a":I
    :goto_2b
    return v1

    :cond_2c
    const/4 v1, 0x1

    goto :goto_2b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2148
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayout()V

    .line 2149
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1961
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->closeChatDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->closeChatDialog:Landroid/app/Dialog;

    if-ne p1, v1, :cond_4e

    .line 1962
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 1963
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_4f

    .line 1964
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1965
    .local v0, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->removeSelfFromStack()V

    .line 1966
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1971
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4e
    :goto_4e
    return-void

    .line 1968
    :cond_4f
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->finishFragment()V

    goto :goto_4e
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3395
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 434
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "download_running"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->downloaderRunning:Z

    .line 437
    iput v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    .line 438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 439
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 440
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 441
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 442
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 443
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 445
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 446
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 447
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 448
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 449
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 450
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 452
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->loading:Z

    .line 453
    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startLoadFromMessageId:I

    if-eqz v1, :cond_9c

    .line 454
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->needSelectFromMessageId:Z

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :goto_96
    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_LoadMessagesByClassGuid(I)V

    .line 461
    return v4

    .line 457
    :cond_9c
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->waitingForLoad:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->lastLoadIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96
.end method

.method public onFragmentDestroy()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 466
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 467
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 468
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 469
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 470
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 471
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 472
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 473
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 474
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 475
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 476
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 477
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 478
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 479
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 481
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 482
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 484
    :cond_9a
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;

    if-eqz v0, :cond_ac

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/StickersAdapter;->onDestroy()V

    .line 488
    :cond_ac
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_b5

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    .line 491
    :cond_b5
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 492
    return-void
.end method

.method public onPause()V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 2086
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_e

    .line 2089
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 2091
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_17

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    .line 2094
    :cond_17
    iput-boolean v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->paused:Z

    .line 2095
    iput-boolean v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->wasPaused:Z

    .line 2096
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/NotificationsController;->setOpenedDialogId(J)V

    .line 2097
    const/4 v6, 0x0

    .line 2098
    .local v6, "draftMessage":Ljava/lang/CharSequence;
    const/4 v8, 0x1

    .line 2100
    .local v8, "searchWebpage":Z
    new-array v7, v5, [Ljava/lang/CharSequence;

    aput-object v6, v7, v9

    .line 2101
    .local v7, "message":[Ljava/lang/CharSequence;
    invoke-static {v7}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2102
    .local v3, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    aget-object v2, v7, v9

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_49

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    :goto_3a
    if-nez v8, :cond_4b

    :goto_3c
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 2104
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    invoke-virtual {v0, v9, v4, v5}, Lorg/telegram/messenger/MessagesController;->cancelTyping(IJ)V

    .line 2105
    return-void

    .line 2102
    :cond_49
    const/4 v4, 0x0

    goto :goto_3a

    :cond_4b
    move v5, v9

    goto :goto_3c
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 3405
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 3410
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1399
    return-void
.end method

.method public onResume()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2018
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2020
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2022
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->checkActionBarMenu()V

    .line 2023
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_26

    .line 2024
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v5, "50_50"

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2026
    :cond_26
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_3a

    .line 2027
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedImageLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v5, "50_50"

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2030
    :cond_3a
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/NotificationsController;->setOpenedDialogId(J)V

    .line 2031
    iget-boolean v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToTopOnResume:Z

    if-eqz v1, :cond_95

    .line 2032
    iget-boolean v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToTopUnReadOnResume:Z

    if-eqz v1, :cond_11f

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_11f

    .line 2033
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_8f

    .line 2035
    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessagePosition:I

    const/16 v3, -0x2328

    if-ne v1, v3, :cond_112

    .line 2036
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getHeight()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getApproximateHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2042
    .local v9, "yOffset":I
    :goto_6c
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v9

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2047
    .end local v9    # "yOffset":I
    :cond_8f
    :goto_8f
    iput-boolean v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToTopUnReadOnResume:Z

    .line 2048
    iput-boolean v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToTopOnResume:Z

    .line 2049
    iput-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessage:Lorg/telegram/messenger/MessageObject;

    .line 2051
    :cond_95
    iput-boolean v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->paused:Z

    .line 2052
    iget-boolean v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->readWhenResume:Z

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_dc

    .line 2053
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2054
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-nez v2, :cond_124

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_124

    .line 2061
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c1
    iput-boolean v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->readWhenResume:Z

    .line 2062
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->readWithMid:I

    iget v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->readWithDate:I

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 2064
    :cond_dc
    iget-boolean v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->wasPaused:Z

    if-eqz v1, :cond_eb

    .line 2065
    iput-boolean v8, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->wasPaused:Z

    .line 2066
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    if-eqz v1, :cond_eb

    .line 2067
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 2071
    :cond_eb
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fixLayout()V

    .line 2073
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_fa

    .line 2077
    :cond_fa
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_111

    .line 2078
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2079
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2080
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setLongClickable(Z)V

    .line 2082
    :cond_111
    return-void

    .line 2037
    :cond_112
    iget v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessagePosition:I

    const/16 v3, -0x2710

    if-ne v1, v3, :cond_11b

    .line 2038
    const/4 v9, 0x0

    .restart local v9    # "yOffset":I
    goto/16 :goto_6c

    .line 2040
    .end local v9    # "yOffset":I
    :cond_11b
    iget v9, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessagePosition:I

    .restart local v9    # "yOffset":I
    goto/16 :goto_6c

    .line 2045
    .end local v9    # "yOffset":I
    :cond_11f
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->moveScrollToLastMessage()V

    goto/16 :goto_8f

    .line 2057
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_124
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 2058
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    goto/16 :goto_a9
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3399
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startDownloading(Ljava/util/ArrayList;)V

    .line 3400
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 1953
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1954
    if-eqz p1, :cond_d

    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->openAnimationEnded:Z

    .line 1957
    :cond_d
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .registers 9
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1943
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    aput v2, v1, v4

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v2, v1, v5

    const/4 v2, 0x2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 1945
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1946
    if-eqz p1, :cond_2e

    .line 1947
    iput-boolean v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->openAnimationEnded:Z

    .line 1949
    :cond_2e
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1553
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->currentPicturePath:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1547
    const-string v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :cond_b
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 2627
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 2715
    return-void
.end method

.method public sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .registers 23
    .param p1, "photoEntry"    # Lorg/telegram/messenger/MediaController$PhotoEntry;
    .param p2, "mutedVideo"    # Z

    .prologue
    .line 2723
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_50

    .line 2724
    const/4 v10, 0x0

    .line 2725
    .local v10, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    const-wide/16 v4, 0x0

    .line 2726
    .local v4, "size":J
    if-eqz p2, :cond_2c

    .line 2727
    new-instance v10, Lorg/telegram/messenger/VideoEditedInfo;

    .end local v10    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    invoke-direct {v10}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 2728
    .restart local v10    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    const/4 v2, -0x1

    iput v2, v10, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 2729
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput-object v2, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 2730
    const-wide/16 v2, -0x1

    iput-wide v2, v10, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iput-wide v2, v10, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2731
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 2733
    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4e

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_4a
    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 2743
    .end local v4    # "size":J
    .end local v10    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_4d
    :goto_4d
    return-void

    .line 2733
    .restart local v4    # "size":J
    .restart local v10    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_4e
    const/4 v14, 0x0

    goto :goto_4a

    .line 2735
    .end local v4    # "size":J
    .end local v10    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_50
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_7f

    .line 2736
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 2737
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto :goto_4d

    .line 2738
    :cond_7f
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 2739
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 2740
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto :goto_4d
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 2705
    return-void
.end method

.method public showOpenUrlAlert(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2746
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p2, :cond_1c

    .line 2747
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->inlineReturn:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    :goto_16
    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2761
    :goto_19
    return-void

    :cond_1a
    move v1, v2

    .line 2747
    goto :goto_16

    .line 2749
    :cond_1c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2750
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2751
    const-string v3, "OpenUrlAlert"

    const v4, 0x7f0703e3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2752
    const-string v1, "Open"

    const v2, 0x7f0703e0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$26;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$26;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2758
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2759
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_19
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 2618
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 1

    .prologue
    .line 2696
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2692
    return-void
.end method
