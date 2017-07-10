.class public Lorg/telegram/messenger/MessagesController;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesController$PrintingUser;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesController; = null

.field public static final UPDATE_MASK_ALL:I = 0x5ff

.field public static final UPDATE_MASK_AVATAR:I = 0x2

.field public static final UPDATE_MASK_CHANNEL:I = 0x2000

.field public static final UPDATE_MASK_CHAT_ADMINS:I = 0x4000

.field public static final UPDATE_MASK_CHAT_AVATAR:I = 0x8

.field public static final UPDATE_MASK_CHAT_MEMBERS:I = 0x20

.field public static final UPDATE_MASK_CHAT_NAME:I = 0x10

.field public static final UPDATE_MASK_NAME:I = 0x1

.field public static final UPDATE_MASK_NEW_MESSAGE:I = 0x800

.field public static final UPDATE_MASK_PHONE:I = 0x400

.field public static final UPDATE_MASK_READ_DIALOG_MESSAGE:I = 0x100

.field public static final UPDATE_MASK_SELECT_DIALOG:I = 0x200

.field public static final UPDATE_MASK_SEND_STATE:I = 0x1000

.field public static final UPDATE_MASK_STATUS:I = 0x4

.field public static final UPDATE_MASK_USER_PHONE:I = 0x80

.field public static final UPDATE_MASK_USER_PRINT:I = 0x40


# instance fields
.field public allowBigEmoji:Z

.field public blockedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public callConnectTimeout:I

.field public callPacketTimeout:I

.field public callReceiveTimeout:I

.field public callRingTimeout:I

.field public callsEnabled:Z

.field private channelViewsToReload:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelViewsToSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelsPts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private checkingLastMessagesDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeleteTaskRunnable:Ljava/lang/Runnable;

.field private currentDeletingTaskMids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeletingTaskTime:I

.field private final dialogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessage:Ljava/util/HashMap;
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

.field public dialogMessagesByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByRandomIds:Ljava/util/HashMap;
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

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsEndReached:Z

.field public dialogsFavs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsMegaGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsServerOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public enableJoined:Z

.field private encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field private exportedChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;",
            ">;"
        }
    .end annotation
.end field

.field public firstGettingTask:Z

.field public fontSize:I

.field private fullUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_userFull;",
            ">;"
        }
    .end annotation
.end field

.field public gettingDifference:Z

.field private gettingDifferenceChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gettingNewDeleteTask:Z

.field private gettingUnknownChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public groupBigSize:I

.field private joiningToChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintingStringCount:I

.field private lastStatusUpdateTime:J

.field private lastViewsCheckTime:J

.field public linkPrefix:Ljava/lang/String;

.field private loadedFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingBlockedUsers:Z

.field public loadingDialogs:Z

.field private loadingFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPeerSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mainPreferences:Landroid/content/SharedPreferences;

.field public maxBroadcastCount:I

.field public maxEditTime:I

.field public maxGroupCount:I

.field public maxMegagroupCount:I

.field public maxPinnedDialogsCount:I

.field public maxRecentGifsCount:I

.field public maxRecentStickersCount:I

.field private migratingDialogs:Z

.field public minGroupConvertSize:I

.field private needShortPollChannels:Landroid/util/SparseIntArray;

.field public nextDialogsCacheOffset:I

.field private offlineSent:Z

.field public onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public printingStringsTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessagesController$PrintingUser;",
            ">;>;"
        }
    .end annotation
.end field

.field public ratingDecay:I

.field public registeringForPush:Z

.field private reloadingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpages:Ljava/util/HashMap;
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

.field private reloadingWebpagesPending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public secretWebpagePreview:I

.field public sendingTypings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public serverDialogsEndReached:Z

.field private shortPollChannels:Landroid/util/SparseIntArray;

.field private statusRequest:I

.field private statusSettingState:I

.field private final updatesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatesQueuePts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueQts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimeChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimePts:J

.field private updatesStartWaitTimeQts:J

.field private updatesStartWaitTimeSeq:J

.field public updatingState:Z

.field private uploadingAvatar:Ljava/lang/String;

.field public useSystemEmoji:Z

.field private users:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 214
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    return-void
.end method

.method public constructor <init>()V
    .registers 16

    .prologue
    const/16 v14, 0xc8

    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    .line 71
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    .line 73
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 74
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    .line 76
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    .line 77
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    .line 78
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    .line 79
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    .line 80
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    .line 81
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    .line 82
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    .line 84
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 88
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    .line 89
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    .line 90
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    .line 92
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    .line 93
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    .line 94
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    .line 99
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    .line 101
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    .line 102
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    .line 104
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 105
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    .line 107
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 108
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    .line 111
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    .line 112
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    .line 113
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    .line 114
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    .line 116
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    .line 117
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    .line 119
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 120
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 121
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 125
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    .line 126
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    .line 128
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    .line 130
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    .line 131
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    .line 133
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    .line 134
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    .line 136
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    .line 152
    iput v11, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 160
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 164
    const-string v8, "t.me"

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 165
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 166
    iput v14, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 167
    iput v13, p0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    .line 168
    const/16 v8, 0x1388

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 169
    iput v14, p0, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    .line 170
    const v8, 0x2a300

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 173
    const/16 v8, 0x1e

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 174
    iput v14, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 175
    const/16 v8, 0x4e20

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 176
    const v8, 0x15f90

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 177
    const/16 v8, 0x7530

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 178
    const/16 v8, 0x2710

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 179
    const/4 v8, 0x5

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 181
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    .line 217
    new-instance v8, Lorg/telegram/messenger/MessagesController$1;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/MessagesController$1;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    .line 246
    new-instance v8, Lorg/telegram/messenger/MessagesController$2;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/MessagesController$2;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    .line 285
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    .line 286
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    .line 287
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 288
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 289
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 290
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 291
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 292
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 293
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "Notifications"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 294
    .local v7, "preferences":Landroid/content/SharedPreferences;
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    .line 295
    const-string v8, "EnableContactJoined"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 297
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 298
    const-string v8, "secretWebpage2"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 299
    const-string v8, "maxGroupCount"

    invoke-interface {v7, v8, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 300
    const-string v8, "maxMegagroupCount"

    const/16 v9, 0x3e8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 301
    const-string v8, "maxRecentGifsCount"

    invoke-interface {v7, v8, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 302
    const-string v8, "maxRecentStickersCount"

    const/16 v9, 0x1e

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 303
    const-string v8, "maxEditTime"

    const/16 v9, 0xe10

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 304
    const-string v8, "groupBigSize"

    const/16 v9, 0xa

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 305
    const-string v8, "ratingDecay"

    const v9, 0x24ea00

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 306
    const-string v9, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_31c

    const/16 v8, 0x12

    :goto_283
    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 307
    const-string v8, "allowBigEmoji"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    .line 308
    const-string v8, "useSystemEmoji"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    .line 309
    const-string v8, "callsEnabled"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    .line 310
    const-string v8, "linkPrefix"

    const-string v9, "t.me"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 311
    const-string v8, "callReceiveTimeout"

    const/16 v9, 0x4e20

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 312
    const-string v8, "callRingTimeout"

    const v9, 0x15f90

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 313
    const-string v8, "callConnectTimeout"

    const/16 v9, 0x7530

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 314
    const-string v8, "callPacketTimeout"

    const/16 v9, 0x2710

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 315
    const-string v8, "maxPinnedDialogsCount"

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 317
    const-string v8, "disabledFeatures"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "disabledFeaturesString":Ljava/lang/String;
    if-eqz v4, :cond_324

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_324

    .line 320
    const/4 v8, 0x0

    :try_start_2ed
    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 321
    .local v1, "bytes":[B
    if-eqz v1, :cond_324

    .line 322
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 323
    .local v3, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    .line 324
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2fe
    if-ge v0, v2, :cond_324

    .line 325
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v6

    .line 326
    .local v6, "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v6, :cond_319

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    if-eqz v8, :cond_319

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    if-eqz v8, :cond_319

    .line 327
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_319
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_319} :catch_320

    .line 324
    :cond_319
    add-int/lit8 v0, v0, 0x1

    goto :goto_2fe

    .line 306
    .end local v0    # "a":I
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    .end local v3    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "disabledFeaturesString":Ljava/lang/String;
    .end local v6    # "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    :cond_31c
    const/16 v8, 0x10

    goto/16 :goto_283

    .line 331
    .restart local v4    # "disabledFeaturesString":Ljava/lang/String;
    :catch_320
    move-exception v5

    .line 332
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 335
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_324
    return-void
.end method

.method public static TelehNotificatin(Ljava/lang/String;I)V
    .registers 16
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "user_id"    # I

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v6, v10

    .line 689
    .local v6, "num":I
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v11, "SpecialNotifications"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 691
    .local v9, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v2, "intent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.tmessages.openchat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7fffffff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const v10, 0x8000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 694
    const-string v10, "userId"

    invoke-virtual {v2, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v6, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 697
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0201fb

    .line 698
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const-string v11, "AppName"

    const v12, 0x7f070092

    .line 699
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 700
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 701
    invoke-virtual {v10, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 702
    invoke-virtual {v10, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 703
    .local v3, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v10, "vibrate_sc"

    const/4 v11, 0x3

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 704
    .local v4, "needVibrate":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_86

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 705
    :cond_86
    const/4 v10, 0x2

    new-array v10, v10, [J

    fill-array-data v10, :array_ec

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 713
    :cond_8f
    :goto_8f
    const-string v10, "color_sc"

    const v11, -0xff0100

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x3e8

    const/16 v12, 0x3e8

    invoke-virtual {v3, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "defaultPath":Ljava/lang/String;
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 717
    .local v1, "defaultUri":Landroid/net/Uri;
    if-eqz v1, :cond_a8

    .line 718
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_a8
    const-string v10, "sound_path_sc"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 721
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 723
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 724
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 725
    return-void

    .line 706
    .end local v0    # "defaultPath":Ljava/lang/String;
    .end local v1    # "defaultUri":Landroid/net/Uri;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "path":Ljava/lang/String;
    :cond_c7
    const/4 v10, 0x2

    if-ne v4, v10, :cond_d4

    .line 707
    const/4 v10, 0x4

    new-array v10, v10, [J

    fill-array-data v10, :array_f8

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8f

    .line 708
    :cond_d4
    if-eqz v4, :cond_d9

    const/4 v10, 0x4

    if-ne v4, v10, :cond_de

    .line 709
    :cond_d9
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8f

    .line 710
    :cond_de
    const/4 v10, 0x3

    if-ne v4, v10, :cond_8f

    .line 711
    const/4 v10, 0x2

    new-array v10, v10, [J

    fill-array-data v10, :array_10c

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8f

    .line 705
    nop

    :array_ec
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 707
    :array_f8
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 711
    :array_10c
    .array-data 8
        0x0
        0x3e8
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MessagesController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MessagesController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MessagesController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MessagesController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MessagesController;Z)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MessagesController;JZII)V
    .registers 7
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MessagesController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lorg/telegram/messenger/MessagesController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MessagesController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MessagesController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/messenger/MessagesController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MessagesController;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/MessagesController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MessagesController;IIIIIJ)V
    .registers 8
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # J

    .prologue
    .line 62
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MessagesController;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MessagesController;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MessagesController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MessagesController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    return-wide p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/MessagesController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    return-wide p1
.end method

.method private applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .registers 19
    .param p1, "dialog_id"    # J
    .param p3, "notify_settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 3688
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "Notifications"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3689
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3690
    .local v2, "currentValue":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3691
    .local v3, "currentValue2":I
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3692
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 3693
    .local v8, "updated":Z
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3694
    .local v4, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v4, :cond_54

    .line 3695
    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3697
    :cond_54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "silent_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3698
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_130

    .line 3699
    const/4 v7, 0x0

    .line 3700
    .local v7, "until":I
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    const v11, 0x1e13380

    add-int/2addr v10, v11

    if-le v9, v10, :cond_e2

    .line 3701
    const/4 v9, 0x2

    if-eq v2, v9, :cond_b7

    .line 3702
    const/4 v8, 0x1

    .line 3703
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3704
    if-eqz v4, :cond_b7

    .line 3705
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v10, 0x7fffffff

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3720
    :cond_b7
    :goto_b7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    or-long/2addr v10, v12

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 3721
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 3732
    .end local v7    # "until":I
    :goto_d0
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3733
    if-eqz v8, :cond_e1

    .line 3734
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3736
    :cond_e1
    return-void

    .line 3709
    .restart local v7    # "until":I
    :cond_e2
    const/4 v9, 0x3

    if-ne v2, v9, :cond_eb

    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v3, v9, :cond_12b

    .line 3710
    :cond_eb
    const/4 v8, 0x1

    .line 3711
    move-object/from16 v0, p3

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3712
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3713
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3714
    if-eqz v4, :cond_12b

    .line 3715
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v7, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3718
    :cond_12b
    move-object/from16 v0, p3

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_b7

    .line 3723
    .end local v7    # "until":I
    :cond_130
    if-eqz v2, :cond_155

    const/4 v9, 0x1

    if-eq v2, v9, :cond_155

    .line 3724
    const/4 v8, 0x1

    .line 3725
    if-eqz v4, :cond_13d

    .line 3726
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v10, 0x0

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3728
    :cond_13d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3730
    :cond_155
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_d0
.end method

.method private applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3739
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v3, 0x0

    .line 3740
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_e0

    .line 3741
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3742
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_81

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v5, :cond_81

    .line 3743
    if-nez v3, :cond_27

    .line 3744
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3745
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3748
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_27
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_85

    .line 3749
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3755
    .local v2, "dialog_id":I
    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3756
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v5, :cond_c9

    .line 3757
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    const v7, 0x1e13380

    add-int/2addr v6, v7

    if-le v5, v6, :cond_97

    .line 3758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3759
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3740
    .end local v2    # "dialog_id":I
    :cond_81
    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 3750
    :cond_85
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_91

    .line 3751
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_31

    .line 3753
    .end local v2    # "dialog_id":I
    :cond_91
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_31

    .line 3761
    :cond_97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_81

    .line 3765
    :cond_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_81

    .line 3769
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "dialog_id":I
    :cond_e0
    if-eqz v3, :cond_e5

    .line 3770
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3772
    :cond_e5
    return-void
.end method

.method public static checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .registers 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 546
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 571
    :cond_6
    :goto_6
    return v5

    .line 549
    :cond_7
    const/4 v3, 0x0

    .line 550
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 551
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const-string v7, "user_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 552
    .local v4, "user_id":I
    const-string v7, "chat_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, "chat_id":I
    if-eqz v4, :cond_37

    .line 554
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 558
    :cond_23
    :goto_23
    if-nez v3, :cond_27

    if-eqz v0, :cond_6

    .line 561
    :cond_27
    const/4 v2, 0x0

    .line 562
    .local v2, "reason":Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 563
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    :cond_30
    :goto_30
    if-eqz v2, :cond_6

    .line 568
    invoke-static {p1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    move v5, v6

    .line 569
    goto :goto_6

    .line 555
    .end local v2    # "reason":Ljava/lang/String;
    :cond_37
    if-eqz v1, :cond_23

    .line 556
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_23

    .line 564
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_46
    if-eqz v3, :cond_30

    .line 565
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_30
.end method

.method private checkChannelError(Ljava/lang/String;I)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "channelId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5593
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_76

    :cond_b
    :goto_b
    packed-switch v0, :pswitch_data_84

    .line 5604
    :goto_e
    return-void

    .line 5593
    :sswitch_f
    const-string v4, "CHANNEL_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v1

    goto :goto_b

    :sswitch_19
    const-string v4, "CHANNEL_PUBLIC_GROUP_NA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    goto :goto_b

    :sswitch_23
    const-string v4, "USER_BANNED_IN_CHANNEL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v3

    goto :goto_b

    .line 5595
    :pswitch_2d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_e

    .line 5598
    :pswitch_45
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_e

    .line 5601
    :pswitch_5d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_e

    .line 5593
    nop

    :sswitch_data_76
    .sparse-switch
        -0x6bd947ea -> :sswitch_23
        -0x2f6631f9 -> :sswitch_f
        -0x1c1436b3 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_45
        :pswitch_5d
    .end packed-switch
.end method

.method private checkDeletingTask(Z)Z
    .registers 5
    .param p1, "runnable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1779
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1781
    .local v0, "currentServerTime":I
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    if-eqz v2, :cond_32

    if-nez p1, :cond_17

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-eqz v2, :cond_32

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-gt v2, v0, :cond_32

    .line 1782
    :cond_17
    iput v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 1783
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_26

    if-nez p1, :cond_26

    .line 1784
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1786
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 1787
    new-instance v1, Lorg/telegram/messenger/MessagesController$23;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$23;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1802
    const/4 v1, 0x1

    .line 1804
    :cond_32
    return v1
.end method

.method private checkHiddenChats(Ljava/lang/Long;)Z
    .registers 10
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 8364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 8365
    .local v0, "rightNow":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidechannel_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hidechannelenddate_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_44

    .line 8366
    const/4 v1, 0x1

    .line 8368
    :goto_43
    return v1

    :cond_44
    const/4 v1, 0x0

    goto :goto_43
.end method

.method private deleteDialog(JZII)V
    .registers 31
    .param p1, "did"    # J
    .param p3, "first"    # Z
    .param p4, "onlyHistory"    # I
    .param p5, "max_id"    # I

    .prologue
    .line 2254
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    .line 2255
    .local v17, "lower_part":I
    const/16 v4, 0x20

    shr-long v6, p1, v4

    long-to-int v15, v6

    .line 2256
    .local v15, "high_id":I
    move/from16 v18, p5

    .line 2258
    .local v18, "max_id_delete":I
    new-instance v13, Lorg/telegram/SQLite/DBHelper;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v13, v4}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    .line 2259
    .local v13, "dbHelper":Lorg/telegram/SQLite/DBHelper;
    invoke-virtual {v13}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 2261
    :try_start_16
    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lorg/telegram/SQLite/DBHelper;->deleteFMsByDid(J)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2f

    .line 2263
    invoke-virtual {v13}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 2266
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_34

    .line 2267
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2393
    :cond_2e
    :goto_2e
    return-void

    .line 2263
    :catchall_2f
    move-exception v4

    invoke-virtual {v13}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v4

    .line 2270
    :cond_34
    if-eqz p4, :cond_3b

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_3e

    .line 2271
    :cond_3b
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->uninstallShortcut(J)V

    .line 2274
    :cond_3e
    if-eqz p3, :cond_1d2

    .line 2275
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2277
    .local v14, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v14, :cond_197

    .line 2278
    if-nez v18, :cond_64

    .line 2279
    const/4 v4, 0x0

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2281
    :cond_64
    if-eqz p4, :cond_6b

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_21d

    .line 2282
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-static {v14}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2284
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$38;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$38;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2293
    :cond_90
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 2302
    :goto_c2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 2303
    .local v22, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v22, :cond_222

    .line 2304
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v16

    .line 2305
    .local v16, "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    :goto_e7
    if-eqz v22, :cond_106

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_106

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    :cond_106
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_273

    if-eqz v17, :cond_273

    if-lez v16, :cond_273

    .line 2314
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 2315
    .local v19, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move-object/from16 v0, v19

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 2316
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 2317
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 2318
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v19

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 2319
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 2320
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move-object/from16 v0, v19

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 2321
    if-lez v17, :cond_238

    .line 2322
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2323
    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v17

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2334
    :goto_153
    new-instance v20, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 2335
    .local v20, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    .local v21, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2338
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 2340
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2345
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v16    # "lastMessageId":I
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v21    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_197
    :goto_197
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2346
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2347
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$39;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$39;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2360
    .end local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1d2
    const/4 v4, 0x1

    if-eq v15, v4, :cond_2e

    const/4 v4, 0x3

    move/from16 v0, p4

    if-eq v0, v4, :cond_2e

    .line 2364
    if-eqz v17, :cond_27e

    .line 2365
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v23

    .line 2366
    .local v23, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v23, :cond_2e

    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-nez v4, :cond_2e

    .line 2369
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;-><init>()V

    .line 2370
    .local v24, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2371
    if-nez p4, :cond_278

    const v4, 0x7fffffff

    :goto_1f8
    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    .line 2372
    if-eqz p4, :cond_27c

    const/4 v4, 0x1

    :goto_1ff
    move-object/from16 v0, v24

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    .line 2373
    move/from16 v11, v18

    .line 2374
    .local v11, "max_id_delete_final":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$40;

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/MessagesController$40;-><init>(Lorg/telegram/messenger/MessagesController;JII)V

    const/16 v7, 0x40

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_2e

    .line 2299
    .end local v11    # "max_id_delete_final":I
    .end local v23    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v24    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    .restart local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_21d
    const/4 v4, 0x0

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    goto/16 :goto_c2

    .line 2307
    .restart local v22    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_222
    iget v0, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v16, v0

    .line 2308
    .restart local v16    # "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "object":Lorg/telegram/messenger/MessageObject;
    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .restart local v22    # "object":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_e7

    .line 2325
    .restart local v19    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_238
    move/from16 v0, v17

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 2326
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_25f

    .line 2327
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2328
    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v17

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_153

    .line 2330
    :cond_25f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2331
    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v17

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_153

    .line 2342
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_273
    const/4 v4, 0x0

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto/16 :goto_197

    .end local v14    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "lastMessageId":I
    .end local v22    # "object":Lorg/telegram/messenger/MessageObject;
    .restart local v23    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v24    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_278
    move/from16 v4, v18

    .line 2371
    goto/16 :goto_1f8

    .line 2372
    :cond_27c
    const/4 v4, 0x0

    goto :goto_1ff

    .line 2387
    .end local v23    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v24    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_27e
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_297

    .line 2388
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_2e

    .line 2390
    :cond_297
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_2e
.end method

.method private getChannelDifference(I)V
    .registers 9
    .param p1, "channelId"    # I

    .prologue
    .line 5317
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 5318
    return-void
.end method

.method public static getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .registers 3
    .param p0, "chatId"    # I

    .prologue
    .line 478
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public static getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .registers 5
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 467
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_8

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_16

    .line 468
    :cond_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .line 469
    .local v0, "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    .line 470
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    .line 473
    .end local v0    # "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_15
.end method

.method public static getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .registers 7
    .param p0, "id"    # I

    .prologue
    .line 483
    if-gez p0, :cond_2b

    .line 484
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 485
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 486
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 487
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 488
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 501
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_21
    :goto_21
    return-object v1

    .line 490
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_22
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 491
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_21

    .line 494
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_2b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 495
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 496
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    .line 497
    if-eqz v2, :cond_21

    .line 498
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_21
.end method

.method public static getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;
    .registers 4
    .param p0, "user_id"    # I

    .prologue
    .line 462
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 463
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    return-object v1
.end method

.method public static getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;
    .registers 5
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 447
    if-nez p0, :cond_8

    .line 448
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 458
    :goto_7
    return-object v0

    .line 451
    :cond_8
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 452
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_7

    .line 454
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 455
    .restart local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    .line 456
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    goto :goto_7
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesController;
    .registers 4

    .prologue
    .line 272
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 273
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesController;
    if-nez v0, :cond_14

    .line 274
    const-class v3, Lorg/telegram/messenger/MessagesController;

    monitor-enter v3

    .line 275
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 276
    if-nez v0, :cond_13

    .line 277
    new-instance v1, Lorg/telegram/messenger/MessagesController;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesController;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 279
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 281
    :cond_14
    return-object v0

    .line 279
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    goto :goto_16
.end method

.method public static getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;
    .registers 6
    .param p0, "id"    # I

    .prologue
    .line 506
    if-gez p0, :cond_29

    .line 507
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 508
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v3, :cond_17

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v3, :cond_20

    .line 509
    :cond_17
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 510
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 520
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_1f
    return-object v1

    .line 512
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_20
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .line 513
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_1f

    .line 516
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 517
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 518
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1f
.end method

.method private static getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 524
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 534
    :cond_9
    :goto_9
    return-object v2

    .line 527
    :cond_a
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 528
    .local v0, "index":I
    if-lez v0, :cond_9

    .line 529
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "type":Ljava/lang/String;
    const-string v3, "-all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "-android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 531
    :cond_27
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method private getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I
    .registers 3
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 6286
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v0, :cond_d

    .line 6287
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6291
    :goto_c
    return v0

    .line 6288
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_1a

    .line 6289
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_c

    .line 6291
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1a
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    goto :goto_c
.end method

.method private getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I
    .registers 3
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 5056
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v0, :cond_7

    .line 5057
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    .line 5059
    :goto_6
    return v0

    :cond_7
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    goto :goto_6
.end method

.method private getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I
    .registers 3
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 6271
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-nez v0, :cond_1c

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v0, :cond_1e

    .line 6274
    :cond_1c
    const/4 v0, 0x0

    .line 6281
    :goto_1d
    return v0

    .line 6275
    :cond_1e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v0, :cond_24

    .line 6276
    const/4 v0, 0x1

    goto :goto_1d

    .line 6277
    :cond_24
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-nez v0, :cond_34

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-nez v0, :cond_34

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v0, :cond_34

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v0, :cond_36

    .line 6279
    :cond_34
    const/4 v0, 0x2

    goto :goto_1d

    .line 6281
    :cond_36
    const/4 v0, 0x3

    goto :goto_1d
.end method

.method private getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .registers 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2680
    if-nez p1, :cond_5

    .line 2681
    const-string v0, ""

    .line 2688
    :goto_4
    return-object v0

    .line 2683
    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 2684
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_4

    .line 2685
    :cond_14
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 2686
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_4

    .line 2688
    :cond_23
    const-string v0, ""

    goto :goto_4
.end method

.method public static isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .registers 7
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x1

    .line 408
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    if-nez p1, :cond_18

    .line 423
    :cond_17
    :goto_17
    return v2

    .line 411
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 412
    .local v1, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 413
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Oops!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 420
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_63
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private isNotifySettingsMuted(Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)Z
    .registers 4
    .param p1, "settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 8076
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v0, :cond_12

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I
    .registers 9
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5085
    if-nez p2, :cond_1b

    .line 5086
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    .line 5087
    .local v0, "seq":I
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_13

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v0, :cond_15

    :cond_13
    move v1, v3

    .line 5111
    .end local v0    # "seq":I
    :cond_14
    :goto_14
    return v1

    .line 5089
    .restart local v0    # "seq":I
    :cond_15
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-lt v3, v0, :cond_14

    move v1, v2

    .line 5092
    goto :goto_14

    .line 5094
    .end local v0    # "seq":I
    :cond_1b
    if-ne p2, v1, :cond_30

    .line 5095
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-gt v4, v5, :cond_25

    move v1, v2

    .line 5096
    goto :goto_14

    .line 5097
    :cond_25
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_14

    move v1, v3

    .line 5098
    goto :goto_14

    .line 5102
    :cond_30
    if-ne p2, v2, :cond_49

    .line 5103
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-gt v4, v5, :cond_3a

    move v1, v2

    .line 5104
    goto :goto_14

    .line 5105
    :cond_3a
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_14

    move v1, v3

    .line 5106
    goto :goto_14

    :cond_49
    move v1, v3

    .line 5111
    goto :goto_14
.end method

.method private migrateDialogs(IIIIIJ)V
    .registers 12
    .param p1, "offset"    # I
    .param p2, "offsetDate"    # I
    .param p3, "offsetUser"    # I
    .param p4, "offsetChat"    # I
    .param p5, "offsetChannel"    # I
    .param p6, "accessPeer"    # J

    .prologue
    .line 3227
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    if-nez v1, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 3389
    :cond_7
    :goto_7
    return-void

    .line 3230
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    .line 3232
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 3233
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 3234
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3235
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3236
    if-nez p1, :cond_2e

    .line 3237
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3251
    :goto_21
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$57;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$57;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_7

    .line 3239
    :cond_2e
    if-eqz p5, :cond_40

    .line 3240
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3241
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 3249
    :goto_3b
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_21

    .line 3242
    :cond_40
    if-eqz p3, :cond_4e

    .line 3243
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3244
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_3b

    .line 3246
    :cond_4e
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3247
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3b
.end method

.method public static openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .registers 10
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 615
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 684
    :cond_5
    :goto_5
    return-void

    .line 618
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 619
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_15

    .line 620
    const/4 v4, 0x0

    invoke-static {v3, v4, p1, p2, v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_5

    .line 622
    :cond_15
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 625
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 626
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string v4, "Loading"

    const v5, 0x7f0702eb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 628
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 630
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 631
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 632
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$4;

    invoke-direct {v5, v0, p1, p2}, Lorg/telegram/messenger/MessagesController$4;-><init>(Landroid/app/ProgressDialog;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-virtual {v4, v1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 667
    .local v2, "reqId":I
    const/4 v4, -0x2

    const-string v5, "Cancel"

    const v6, 0x7f0700fe

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$5;

    invoke-direct {v6, v2, p1}, Lorg/telegram/messenger/MessagesController$5;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 681
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 682
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5
.end method

.method public static openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .registers 13
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "type"    # I
    .param p4, "closeLast"    # Z

    .prologue
    .line 575
    if-nez p0, :cond_4

    if-eqz p1, :cond_6

    :cond_4
    if-nez p2, :cond_7

    .line 612
    :cond_6
    :goto_6
    return-void

    .line 578
    :cond_7
    const/4 v4, 0x0

    .line 580
    .local v4, "reason":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 581
    .local v2, "did":J
    if-eqz p1, :cond_1c

    .line 582
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    int-to-long v2, v5

    .line 592
    :cond_16
    :goto_16
    if-eqz v4, :cond_2e

    .line 593
    invoke-static {p2, v4}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    goto :goto_6

    .line 584
    :cond_1c
    if-eqz p0, :cond_16

    .line 585
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_2a

    .line 587
    const/4 p3, 0x1

    .line 588
    const/4 p4, 0x1

    .line 590
    :cond_2a
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v2, v5

    goto :goto_16

    .line 596
    :cond_2e
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 597
    .local v1, "isHide":Z
    if-nez v1, :cond_6

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 601
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_6d

    .line 602
    const-string v5, "chat_id"

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    :goto_62
    if-nez p3, :cond_75

    .line 607
    new-instance v5, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_6

    .line 604
    :cond_6d
    const-string v5, "user_id"

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_62

    .line 609
    :cond_75
    new-instance v5, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v5, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_6
.end method

.method private processChannelsUpdatesQueue(II)V
    .registers 15
    .param p1, "channelId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v10, 0x1

    .line 5115
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5116
    .local v5, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v5, :cond_10

    .line 5172
    :cond_f
    :goto_f
    return-void

    .line 5119
    :cond_10
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5120
    .local v2, "channelPts":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    if-nez v2, :cond_2e

    .line 5121
    :cond_24
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 5124
    :cond_2e
    new-instance v7, Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/MessagesController$89;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5130
    const/4 v1, 0x0

    .line 5131
    .local v1, "anyProceed":Z
    const/4 v7, 0x2

    if-ne p2, v7, :cond_50

    .line 5132
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5134
    :cond_50
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_51
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_113

    .line 5135
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5137
    .local v4, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_74

    .line 5138
    const/4 v3, 0x2

    .line 5144
    .local v3, "updateState":I
    :goto_66
    if-nez v3, :cond_83

    .line 5145
    invoke-virtual {p0, v4, v10}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 5146
    const/4 v1, 0x1

    .line 5147
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5148
    add-int/lit8 v0, v0, -0x1

    .line 5134
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 5139
    .end local v3    # "updateState":I
    :cond_74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v7, v8, :cond_81

    .line 5140
    const/4 v3, 0x0

    .restart local v3    # "updateState":I
    goto :goto_66

    .line 5142
    .end local v3    # "updateState":I
    :cond_81
    const/4 v3, 0x1

    .restart local v3    # "updateState":I
    goto :goto_66

    .line 5149
    :cond_83
    if-ne v3, v10, :cond_10c

    .line 5150
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 5151
    .local v6, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v6, :cond_d9

    if-nez v1, :cond_a8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x5dc

    cmp-long v7, v8, v10

    if-gtz v7, :cond_d9

    .line 5152
    :cond_a8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UPDATES QUEUE - will wait more time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5153
    if-eqz v1, :cond_f

    .line 5154
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 5158
    :cond_d9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UPDATES QUEUE - getChannelDifference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5159
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5160
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5161
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_f

    .line 5165
    .end local v6    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_10c
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5166
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_71

    .line 5169
    .end local v3    # "updateState":I
    .end local v4    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_113
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5170
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATES CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " QUEUE PROCEED - OK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private processUpdatesQueue(II)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    .line 5175
    const/4 v4, 0x0

    .line 5176
    .local v4, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez p1, :cond_4a

    .line 5177
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 5178
    new-instance v5, Lorg/telegram/messenger/MessagesController$90;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$90;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5201
    :cond_11
    :goto_11
    if-eqz v4, :cond_bb

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 5202
    const/4 v1, 0x0

    .line 5203
    .local v1, "anyProceed":Z
    if-ne p2, v7, :cond_2b

    .line 5204
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5205
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    if-nez p1, :cond_64

    .line 5206
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 5213
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b3

    .line 5214
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5215
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/MessagesController;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I

    move-result v2

    .line 5216
    .local v2, "updateState":I
    if-nez v2, :cond_70

    .line 5217
    invoke-virtual {p0, v3, v6}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 5218
    const/4 v1, 0x1

    .line 5219
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5220
    add-int/lit8 v0, v0, -0x1

    .line 5213
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 5184
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_4a
    if-ne p1, v6, :cond_57

    .line 5185
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 5186
    new-instance v5, Lorg/telegram/messenger/MessagesController$91;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$91;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_11

    .line 5192
    :cond_57
    if-ne p1, v7, :cond_11

    .line 5193
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 5194
    new-instance v5, Lorg/telegram/messenger/MessagesController$92;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$92;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_11

    .line 5207
    .restart local v1    # "anyProceed":Z
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_64
    if-ne p1, v6, :cond_6b

    .line 5208
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_2b

    .line 5210
    :cond_6b
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    goto :goto_2b

    .line 5221
    .restart local v0    # "a":I
    .restart local v2    # "updateState":I
    :cond_70
    if-ne v2, v6, :cond_ad

    .line 5222
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9e

    if-nez v1, :cond_8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v5, v6, v8

    if-gtz v5, :cond_9e

    .line 5223
    :cond_8f
    const-string v5, "HOLE IN UPDATES QUEUE - will wait more time"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5224
    if-eqz v1, :cond_9d

    .line 5225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 5244
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_9d
    :goto_9d
    return-void

    .line 5229
    .restart local v0    # "a":I
    .restart local v1    # "anyProceed":Z
    .restart local v2    # "updateState":I
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_9e
    const-string v5, "HOLE IN UPDATES QUEUE - getDifference"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5230
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 5231
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5232
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto :goto_9d

    .line 5236
    :cond_ad
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5237
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 5240
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5241
    const-string v5, "UPDATES QUEUE PROCEED - OK"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5243
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    :cond_bb
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    goto :goto_9d
.end method

.method private reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    .registers 12
    .param p2, "did"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const-wide/16 v6, 0x0

    .line 1171
    cmp-long v3, p2, v6

    if-nez v3, :cond_f

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1261
    :cond_e
    :goto_e
    return-void

    .line 1174
    :cond_f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 1175
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    if-eqz p1, :cond_3d

    .line 1176
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_51

    .line 1177
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 1178
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_37

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_37

    .line 1176
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1181
    :cond_37
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 1184
    .end local v0    # "a":I
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_3d
    long-to-int v3, p2

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 1185
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_4c

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_e

    .line 1188
    :cond_4c
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_51
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1193
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$11;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$11;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_e
.end method

.method private reloadMessages(Ljava/util/ArrayList;J)V
    .registers 16
    .param p2, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1521
    :cond_6
    :goto_6
    return-void

    .line 1417
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Lorg/telegram/messenger/ChatObject;->getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1419
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1420
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 1421
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1422
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 1423
    move-object v10, v9

    .line 1429
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    .local v10, "request":Lorg/telegram/tgnet/TLObject;
    :goto_24
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1430
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_55

    .line 1431
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1432
    .local v8, "mid":Ljava/lang/Integer;
    if-eqz v7, :cond_51

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1430
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 1425
    .end local v6    # "a":I
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "mid":Ljava/lang/Integer;
    .end local v10    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_48
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 1426
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    .line 1427
    move-object v10, v9

    .restart local v10    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_24

    .line 1435
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    .restart local v6    # "a":I
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "mid":Ljava/lang/Integer;
    :cond_51
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1437
    .end local v8    # "mid":Ljava/lang/Integer;
    :cond_55
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1440
    if-nez v7, :cond_6b

    .line 1441
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    :cond_6b
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1445
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v0, Lorg/telegram/messenger/MessagesController$14;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$14;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6
.end method

.method private setUpdatesStartTime(IJ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    .line 5064
    if-nez p1, :cond_5

    .line 5065
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 5071
    :cond_4
    :goto_4
    return-void

    .line 5066
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 5067
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_4

    .line 5068
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 5069
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_4
.end method

.method private static showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .registers 5
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 540
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 543
    return-void
.end method

.method private updatePrintingStrings()V
    .registers 22

    .prologue
    .line 2692
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2693
    .local v10, "newPrintingStrings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/CharSequence;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2695
    .local v11, "newPrintingStringsTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2696
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_23
    :goto_23
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_39f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2697
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2698
    .local v6, "key":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2700
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    long-to-int v9, v6

    .line 2702
    .local v9, "lower_id":I
    if-gtz v9, :cond_4e

    if-eqz v9, :cond_4e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_29d

    .line 2703
    :cond_4e
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2704
    .local v12, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2705
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v13, :cond_64

    .line 2798
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v9    # "lower_id":I
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_63
    return-void

    .line 2708
    .restart local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .restart local v6    # "key":J
    .restart local v9    # "lower_id":I
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_64
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    if-eqz v14, :cond_b3

    .line 2709
    if-gez v9, :cond_a0

    .line 2710
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsRecordingAudio"

    const v17, 0x7f0702a6

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    :goto_90
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 2712
    :cond_a0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "RecordingAudio"

    const v17, 0x7f070477

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 2715
    :cond_b3
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    if-eqz v14, :cond_103

    .line 2716
    if-gez v9, :cond_f0

    .line 2717
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsSendingAudio"

    const v17, 0x7f0702a7

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    :goto_df
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2719
    :cond_f0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "SendingAudio"

    const v17, 0x7f0704e2

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_df

    .line 2722
    :cond_103
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    if-nez v14, :cond_10f

    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    if-eqz v14, :cond_159

    .line 2723
    :cond_10f
    if-gez v9, :cond_146

    .line 2724
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsSendingVideo"

    const v17, 0x7f0702ab

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    :goto_135
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2726
    :cond_146
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "SendingVideoStatus"

    const v17, 0x7f0704e8

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_135

    .line 2729
    :cond_159
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    if-eqz v14, :cond_1a9

    .line 2730
    if-gez v9, :cond_196

    .line 2731
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsSendingFile"

    const v17, 0x7f0702a8

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    :goto_185
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2733
    :cond_196
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "SendingFile"

    const v17, 0x7f0704e3

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_185

    .line 2736
    :cond_1a9
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    if-eqz v14, :cond_1f9

    .line 2737
    if-gez v9, :cond_1e6

    .line 2738
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsSendingPhoto"

    const v17, 0x7f0702aa

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2742
    :goto_1d5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2740
    :cond_1e6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "SendingPhoto"

    const v17, 0x7f0704e6

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d5

    .line 2743
    :cond_1f9
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    if-eqz v14, :cond_249

    .line 2744
    if-gez v9, :cond_236

    .line 2745
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "IsSendingGame"

    const v17, 0x7f0702a9

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    :goto_225
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2747
    :cond_236
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "SendingGame"

    const v17, 0x7f0704e4

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_225

    .line 2751
    :cond_249
    if-gez v9, :cond_28a

    .line 2752
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "IsTyping"

    const v20, 0x7f0702ac

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    :goto_279
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2754
    :cond_28a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "Typing"

    const v17, 0x7f07054c

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_279

    .line 2759
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_29d
    const/4 v3, 0x0

    .line 2760
    .local v3, "count":I
    const-string v8, ""

    .line 2761
    .local v8, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2a4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2fe

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2762
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v0, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2763
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_2f8

    .line 2764
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_2dd

    .line 2765
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2767
    :cond_2dd
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2768
    add-int/lit8 v3, v3, 0x1

    .line 2770
    :cond_2f8
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v3, v0, :cond_2a4

    .line 2774
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2fe
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_23

    .line 2775
    const/4 v14, 0x1

    if-ne v3, v14, :cond_340

    .line 2776
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string v19, "IsTyping"

    const v20, 0x7f0702ac

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    :goto_32f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 2778
    :cond_340
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v14, v0, :cond_376

    .line 2779
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string v19, "AndMoreTyping"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32f

    .line 2781
    :cond_376
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string v19, "AreTyping"

    const v20, 0x7f0700a1

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32f

    .line 2789
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v3    # "count":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "lower_id":I
    :cond_39f
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 2791
    new-instance v14, Lorg/telegram/messenger/MessagesController$50;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$50;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_63
.end method

.method private updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    .registers 15
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 8094
    cmp-long v7, p1, v8

    if-lez v7, :cond_1f

    .line 8095
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8096
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-eqz v1, :cond_94

    .line 8097
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8127
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    :cond_1e
    :goto_1e
    return v6

    .line 8100
    :cond_1f
    cmp-long v7, p1, v8

    if-gez v7, :cond_94

    .line 8101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8102
    .local v4, "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 8103
    .local v3, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 8104
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 8108
    .end local v3    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_52
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8109
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v2, 0x0

    .line 8110
    .local v2, "changed":Z
    if-eqz v1, :cond_92

    .line 8111
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_92

    .line 8112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 8113
    .local v5, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v7, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 8114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8115
    add-int/lit8 v0, v0, -0x1

    .line 8116
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 8117
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8119
    :cond_8e
    const/4 v2, 0x1

    .line 8111
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 8123
    .end local v0    # "a":I
    .end local v5    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_92
    if-nez v2, :cond_1e

    .line 8127
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v2    # "changed":Z
    .end local v4    # "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_94
    const/4 v6, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public addSupportUser()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 427
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 428
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string v1, "333"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 429
    const v1, 0x514c8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 430
    const-string v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 431
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 432
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 433
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 434
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 436
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 437
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string v1, "42777"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 438
    const v1, 0xbdb28

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 439
    const-string v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 440
    const-string v1, "Notifications"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 441
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 442
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 443
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 444
    return-void
.end method

.method public addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .registers 9
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "reload"    # Z

    .prologue
    .line 4039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4040
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v2, v1

    .line 4041
    .local v2, "messageId":J
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_17

    .line 4042
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 4044
    :cond_17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4045
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 4046
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$62;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/MessagesController$62;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4068
    return-void
.end method

.method public addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 23
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "count_fwd"    # I
    .param p5, "botHash"    # Ljava/lang/String;
    .param p6, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 4615
    if-nez p2, :cond_3

    .line 4742
    :cond_2
    :goto_2
    return-void

    .line 4619
    :cond_3
    if-lez p1, :cond_d7

    .line 4622
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    .line 4623
    .local v4, "isChannel":Z
    if-eqz v4, :cond_62

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_62

    const/4 v9, 0x1

    .line 4624
    .local v9, "isMegagroup":Z
    :goto_1a
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 4625
    .local v5, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz p5, :cond_24

    if-eqz v4, :cond_a9

    if-nez v9, :cond_a9

    .line 4626
    :cond_24
    if-eqz v4, :cond_98

    .line 4627
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v2, :cond_64

    .line 4628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4631
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 4632
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4633
    move-object v8, v14

    .line 4634
    .local v8, "request":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4670
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    :goto_4f
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$80;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController$80;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v15, v8, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    .line 4623
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v9    # "isMegagroup":Z
    :cond_62
    const/4 v9, 0x0

    goto :goto_1a

    .line 4636
    .restart local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .restart local v9    # "isMegagroup":Z
    :cond_64
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_86

    if-nez v9, :cond_86

    .line 4637
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 4638
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4639
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4640
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 4641
    move-object v8, v14

    .line 4642
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4f

    .line 4643
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_86
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4644
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4645
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4646
    move-object v8, v14

    .line 4647
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4f

    .line 4650
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    :cond_98
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;-><init>()V

    .line 4651
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    move/from16 v0, p1

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:I

    .line 4652
    move/from16 v0, p4

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    .line 4653
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4654
    move-object v8, v14

    .line 4655
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4f

    .line 4657
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    :cond_a9
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4658
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4659
    if-eqz v4, :cond_c9

    .line 4660
    move/from16 v0, p1

    neg-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4665
    :goto_bb
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4666
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4667
    move-object v8, v14

    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4f

    .line 4662
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_c9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4663
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move/from16 v0, p1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_bb

    .line 4719
    .end local v4    # "isChannel":Z
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "isMegagroup":Z
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    :cond_d7
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_2

    .line 4720
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_de
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_101

    .line 4721
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v2, v3, :cond_2

    .line 4720
    add-int/lit8 v10, v10, 0x1

    goto :goto_de

    .line 4726
    :cond_101
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 4727
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4728
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4729
    .local v12, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4730
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v12, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4732
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4733
    .local v13, "newPart":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4734
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4735
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4736
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4737
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4738
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const/4 v15, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4739
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 7
    .param p1, "chat_id"    # I
    .param p3, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4456
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4477
    :cond_8
    :goto_8
    return-void

    .line 4459
    :cond_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4460
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4461
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    .line 4462
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$72;

    invoke-direct {v2, p0, p3, v0}, Lorg/telegram/messenger/MessagesController$72;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_8
.end method

.method public blockUser(I)V
    .registers 7
    .param p1, "user_id"    # I

    .prologue
    .line 1896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1897
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_16

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1919
    :cond_16
    :goto_16
    return-void

    .line 1900
    :cond_17
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_4b

    .line 1902
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    .line 1906
    :goto_27
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1907
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    .line 1908
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1909
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$27;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_16

    .line 1904
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    :cond_4b
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    goto :goto_27
.end method

.method public canPinDialog(Z)Z
    .registers 8
    .param p1, "secret"    # Z

    .prologue
    .line 5848
    const/4 v1, 0x0

    .line 5849
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_27

    .line 5850
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5851
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    .line 5852
    .local v3, "lower_id":I
    if-eqz p1, :cond_19

    if-nez v3, :cond_1d

    :cond_19
    if-nez p1, :cond_20

    if-nez v3, :cond_20

    .line 5849
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5855
    :cond_20
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_1d

    .line 5856
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 5859
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "lower_id":I
    :cond_27
    iget v4, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    if-ge v1, v4, :cond_2d

    const/4 v4, 0x1

    :goto_2c
    return v4

    :cond_2d
    const/4 v4, 0x0

    goto :goto_2c
.end method

.method public cancelLoadFullChat(I)V
    .registers 4
    .param p1, "cid"    # I

    .prologue
    .line 1162
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1163
    return-void
.end method

.method public cancelLoadFullUser(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1159
    return-void
.end method

.method public cancelTyping(IJ)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "dialog_id"    # J

    .prologue
    .line 2801
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2802
    .local v0, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_15

    .line 2803
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    :cond_15
    return-void
.end method

.method public changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V
    .registers 8
    .param p1, "chat_id"    # I
    .param p2, "uploadedAvatar"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 4882
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4883
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;-><init>()V

    .line 4884
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4885
    if-eqz p2, :cond_2e

    .line 4886
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4887
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4891
    :goto_1e
    move-object v1, v0

    .line 4903
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1f
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$83;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$83;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v4, 0x40

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4912
    return-void

    .line 4889
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_2e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_1e

    .line 4893
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;-><init>()V

    .line 4894
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->chat_id:I

    .line 4895
    if-eqz p2, :cond_4c

    .line 4896
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4897
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4901
    :goto_4a
    move-object v1, v0

    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1f

    .line 4899
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_4c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_4a
.end method

.method public changeChatTitle(ILjava/lang/String;)V
    .registers 12
    .param p1, "chat_id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4847
    if-lez p1, :cond_32

    .line 4849
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4850
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;-><init>()V

    .line 4851
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4852
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->title:Ljava/lang/String;

    .line 4853
    move-object v3, v2

    .line 4860
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    .local v3, "request":Lorg/telegram/tgnet/TLObject;
    :goto_18
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$82;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$82;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v6, 0x40

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4878
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :goto_26
    return-void

    .line 4855
    :cond_27
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;-><init>()V

    .line 4856
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->chat_id:I

    .line 4857
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->title:Ljava/lang/String;

    .line 4858
    move-object v3, v2

    .restart local v3    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_18

    .line 4870
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4871
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4872
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4873
    .local v1, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4874
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4875
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4876
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_26
.end method

.method public checkChannelInviter(I)V
    .registers 3
    .param p1, "chat_id"    # I

    .prologue
    .line 6186
    new-instance v0, Lorg/telegram/messenger/MessagesController$101;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$101;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6268
    return-void
.end method

.method protected checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .registers 16
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p3, "taskId"    # J

    .prologue
    const/4 v10, 0x1

    .line 3791
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v2

    .line 3792
    .local v6, "lower_id":I
    if-eqz v6, :cond_12

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3881
    :cond_12
    :goto_12
    return-void

    .line 3795
    :cond_13
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 3796
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    if-nez p2, :cond_97

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_1e
    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3797
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_12

    .line 3800
    iput v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 3801
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3804
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_9e

    .line 3805
    const/4 v0, 0x0

    .line 3807
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_3a
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_99

    .line 3808
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v1, 0x5

    :try_start_46
    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3809
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 3810
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3811
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3812
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3813
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3814
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3815
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3816
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3817
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 3818
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3819
    invoke-virtual {p2, v7}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7e} :catch_a0

    move-object v0, v7

    .line 3823
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_7f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 3828
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_87
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$60;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$60;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_12

    .end local v4    # "newTaskId":J
    :cond_97
    move-object v1, p2

    .line 3796
    goto :goto_1e

    .line 3820
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_99
    move-exception v8

    .line 3821
    .local v8, "e":Ljava/lang/Exception;
    :goto_9a
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7f

    .line 3825
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9e
    move-wide v4, p3

    .restart local v4    # "newTaskId":J
    goto :goto_87

    .line 3820
    .end local v4    # "newTaskId":J
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_a0
    move-exception v8

    move-object v0, v7

    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_9a
.end method

.method public cleanup()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 812
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->cleanup()V

    .line 813
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->cleanup()V

    .line 814
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->cleanup()V

    .line 815
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->cleanup()V

    .line 816
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->cleanup()V

    .line 817
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->cleanup()V

    .line 818
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->cleanup()V

    .line 819
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->cleanup()V

    .line 821
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 822
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 823
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 824
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 825
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 826
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 827
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 828
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 831
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 835
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 837
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 839
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 840
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 841
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 842
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 843
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 844
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 845
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 846
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 847
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 848
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 849
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 850
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 852
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 853
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 854
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$7;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 868
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 870
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 871
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 873
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 878
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 879
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    .line 880
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    .line 881
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 882
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 883
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 884
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 885
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 886
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 888
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    .line 889
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 890
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 891
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 892
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 894
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$8;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13b

    .line 908
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 909
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 912
    :cond_13b
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 913
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method protected clearFullUsers()V
    .registers 2

    .prologue
    .line 1166
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1168
    return-void
.end method

.method public convertGroup()V
    .registers 1

    .prologue
    .line 6183
    return-void
.end method

.method public convertToMegaGroup(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 4392
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;-><init>()V

    .line 4393
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;->chat_id:I

    .line 4394
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4395
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string v3, "Loading"

    const v4, 0x7f0702eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4396
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 4397
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4398
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/messenger/MessagesController$70;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 4437
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string v4, "Cancel"

    const v5, 0x7f0700fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$71;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/MessagesController$71;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4449
    :try_start_3e
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 4453
    :goto_41
    return-void

    .line 4450
    :catch_42
    move-exception v3

    goto :goto_41
.end method

.method public createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
    .registers 26
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "about"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4254
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_165

    .line 4255
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 4256
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 4257
    move-object/from16 v0, p1

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 4258
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 4259
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 4260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 4261
    const/4 v4, 0x1

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 4262
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 4263
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 4264
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4265
    .local v13, "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4266
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v13, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4268
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 4269
    .local v12, "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    .line 4270
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4271
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4272
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 4273
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 4274
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:I

    .line 4275
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->admin_id:I

    .line 4276
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    const/4 v6, 0x1

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    .line 4277
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_83
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_be

    .line 4278
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4279
    .local v17, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4280
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4282
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4277
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 4284
    .end local v17    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :cond_be
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4286
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 4287
    .local v14, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 4288
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 4289
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 4290
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v6

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 4291
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4292
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 4293
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 4294
    const-wide/16 v6, 0x0

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 4295
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 4296
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4297
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-direct {v15, v14, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 4298
    .local v15, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v4, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 4300
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4301
    .local v16, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4302
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4303
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4304
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 4305
    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 4306
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4307
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4309
    const/4 v4, 0x0

    .line 4388
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v10    # "a":I
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    .end local v12    # "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    .end local v13    # "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v14    # "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v15    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v16    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_164
    return v4

    .line 4310
    :cond_165
    if-nez p4, :cond_1af

    .line 4311
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;-><init>()V

    .line 4312
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->title:Ljava/lang/String;

    .line 4313
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_173
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_198

    .line 4314
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 4315
    .local v19, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v19, :cond_18c

    .line 4313
    :goto_189
    add-int/lit8 v10, v10, 0x1

    goto :goto_173

    .line 4318
    :cond_18c
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->users:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_189

    .line 4320
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_198
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$68;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$68;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto :goto_164

    .line 4349
    .end local v10    # "a":I
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    :cond_1af
    const/4 v4, 0x2

    move/from16 v0, p4

    if-eq v0, v4, :cond_1b9

    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_1f2

    .line 4350
    :cond_1b9
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;-><init>()V

    .line 4351
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    .line 4352
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    .line 4353
    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_1ec

    .line 4354
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    .line 4358
    :goto_1d4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$69;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$69;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto/16 :goto_164

    .line 4356
    :cond_1ec
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    goto :goto_1d4

    .line 4388
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    :cond_1f2
    const/4 v4, 0x0

    goto/16 :goto_164
.end method

.method public deleteDialog(JI)V
    .registers 11
    .param p1, "did"    # J
    .param p3, "onlyHistory"    # I

    .prologue
    .line 2250
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    .line 2251
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V
    .registers 15
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 2085
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V

    .line 2086
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V
    .registers 35
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .param p6, "taskId"    # J
    .param p8, "taskRequest"    # Lorg/telegram/tgnet/TLObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZJ",
            "Lorg/telegram/tgnet/TLObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2089
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_8
    if-nez p8, :cond_b

    .line 2210
    :goto_a
    return-void

    .line 2092
    :cond_b
    const/16 v19, 0x0

    .line 2093
    .local v19, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v20, 0x0

    cmp-long v20, p6, v20

    if-nez v20, :cond_129

    .line 2094
    if-nez p4, :cond_b9

    .line 2096
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2097
    .local v12, "messagesArr1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    .local v13, "messagesArr2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Lorg/telegram/SQLite/DBHelper;

    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    .line 2099
    .local v9, "dbHelper":Lorg/telegram/SQLite/DBHelper;
    invoke-virtual {v9}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 2101
    :try_start_2b
    invoke-virtual {v9}, Lorg/telegram/SQLite/DBHelper;->getAllFMs()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2102
    invoke-virtual {v9}, Lorg/telegram/SQLite/DBHelper;->getAllPMs()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2103
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_87

    .line 2104
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_65

    .line 2105
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/DBHelper;->deleteFMByMid(I)V

    .line 2107
    :cond_65
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_84

    .line 2108
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/DBHelper;->deletePMByMid(I)V
    :try_end_84
    .catchall {:try_start_2b .. :try_end_84} :catchall_b4

    .line 2103
    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 2112
    :cond_87
    invoke-virtual {v9}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 2115
    const/4 v6, 0x0

    :goto_8b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_c2

    .line 2116
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 2117
    .local v11, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 2118
    .local v15, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v15, :cond_b1

    .line 2119
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 2115
    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 2112
    .end local v6    # "a":I
    .end local v11    # "id":Ljava/lang/Integer;
    .end local v15    # "obj":Lorg/telegram/messenger/MessageObject;
    :catchall_b4
    move-exception v20

    invoke-virtual {v9}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v20

    .line 2123
    .end local v9    # "dbHelper":Lorg/telegram/SQLite/DBHelper;
    .end local v12    # "messagesArr1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "messagesArr2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    .line 2125
    :cond_c2
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2126
    .restart local v19    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_c8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_e6

    .line 2127
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2128
    .local v14, "mid":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_e3

    .line 2129
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    :cond_e3
    add-int/lit8 v6, v6, 0x1

    goto :goto_c8

    .line 2132
    .end local v14    # "mid":Ljava/lang/Integer;
    :cond_e6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    .line 2133
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 2134
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v20

    sget v21, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const/16 v23, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2138
    .end local v6    # "a":I
    :cond_129
    if-eqz p4, :cond_194

    .line 2140
    if-eqz p8, :cond_14f

    move-object/from16 v18, p8

    .line 2141
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    .line 2142
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    move-wide/from16 v16, p6

    .line 2160
    .local v16, "newTaskId":J
    :goto_133
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v21, Lorg/telegram/messenger/MessagesController$34;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController$34;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 2144
    .end local v16    # "newTaskId":J
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_14f
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    .line 2145
    .restart local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    .line 2146
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2148
    const/4 v7, 0x0

    .line 2150
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_165
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->getObjectSize()I

    move-result v20

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_172} :catch_18f

    .line 2151
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/16 v20, 0x7

    :try_start_174
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2152
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2153
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_183} :catch_215

    move-object v7, v8

    .line 2157
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_184
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v16

    .restart local v16    # "newTaskId":J
    goto :goto_133

    .line 2154
    .end local v16    # "newTaskId":J
    :catch_18f
    move-exception v10

    .line 2155
    .local v10, "e":Ljava/lang/Exception;
    :goto_190
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_184

    .line 2173
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_194
    if-eqz p2, :cond_1af

    if-eqz p3, :cond_1af

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1af

    .line 2174
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2177
    :cond_1af
    if-eqz p8, :cond_1d1

    move-object/from16 v18, p8

    .line 2178
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    .line 2179
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    move-wide/from16 v16, p6

    .line 2197
    .restart local v16    # "newTaskId":J
    :goto_1b7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v21, Lorg/telegram/messenger/MessagesController$35;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$35;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 2181
    .end local v16    # "newTaskId":J
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    :cond_1d1
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    .line 2182
    .restart local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    .line 2183
    move/from16 v0, p5

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    .line 2185
    const/4 v7, 0x0

    .line 2187
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_1e3
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->getObjectSize()I

    move-result v20

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1f0} :catch_20d

    .line 2188
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/16 v20, 0x7

    :try_start_1f2
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2189
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2190
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_201} :catch_212

    move-object v7, v8

    .line 2194
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_202
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v16

    .restart local v16    # "newTaskId":J
    goto :goto_1b7

    .line 2191
    .end local v16    # "newTaskId":J
    :catch_20d
    move-exception v10

    .line 2192
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_20e
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_202

    .line 2191
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_212
    move-exception v10

    move-object v7, v8

    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_20e

    .line 2154
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :catch_215
    move-exception v10

    move-object v7, v8

    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto/16 :goto_190
.end method

.method public deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
    .registers 8
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "offset"    # I

    .prologue
    .line 2229
    if-nez p3, :cond_d

    .line 2230
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V

    .line 2232
    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;-><init>()V

    .line 2233
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2234
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2235
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$37;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$37;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2247
    return-void
.end method

.method public deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 21
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4745
    if-nez p2, :cond_3

    .line 4844
    :cond_2
    :goto_2
    return-void

    .line 4749
    :cond_3
    new-instance v12, Lorg/telegram/SQLite/DBHelper;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v12, v2}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    .line 4750
    .local v12, "dbHelper":Lorg/telegram/SQLite/DBHelper;
    invoke-virtual {v12}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 4752
    move/from16 v0, p1

    neg-int v2, v0

    :try_start_10
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 4753
    invoke-virtual {v12}, Lorg/telegram/SQLite/DBHelper;->deleteAllPMs()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_65

    .line 4758
    :goto_19
    invoke-virtual {v12}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 4761
    if-lez p1, :cond_9a

    .line 4762
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v7

    .line 4764
    .local v7, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 4765
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    .line 4766
    .local v6, "isChannel":Z
    if-eqz v6, :cond_89

    .line 4767
    instance-of v2, v7, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v2, :cond_77

    .line 4768
    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_6a

    .line 4769
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;-><init>()V

    .line 4770
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4771
    move-object v15, v14

    .line 4790
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    .local v15, "request":Lorg/telegram/tgnet/TLObject;
    :goto_46
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v16

    new-instance v2, Lorg/telegram/messenger/MessagesController$81;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$81;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V

    const/16 v3, 0x40

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_2

    .line 4755
    .end local v6    # "isChannel":Z
    .end local v7    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v15    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5d
    move/from16 v0, p1

    neg-int v2, v0

    int-to-long v2, v2

    :try_start_61
    invoke-virtual {v12, v2, v3}, Lorg/telegram/SQLite/DBHelper;->deleteFMsByDid(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_19

    .line 4758
    :catchall_65
    move-exception v2

    invoke-virtual {v12}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v2

    .line 4773
    .restart local v6    # "isChannel":Z
    .restart local v7    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6a
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;-><init>()V

    .line 4774
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4775
    move-object v15, v14

    .line 4776
    .restart local v15    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_46

    .line 4778
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    .end local v15    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_77
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;-><init>()V

    .line 4779
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4780
    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4781
    const/4 v2, 0x1

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->kicked:Z

    .line 4782
    move-object v15, v14

    .line 4783
    .restart local v15    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_46

    .line 4785
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    .end local v15    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_89
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    .line 4786
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    move/from16 v0, p1

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    .line 4787
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4788
    move-object v15, v14

    .restart local v15    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_46

    .line 4821
    .end local v6    # "isChannel":Z
    .end local v7    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    .end local v15    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_9a
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_2

    .line 4822
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 4823
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4824
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4825
    .local v11, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4826
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v11, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4828
    const/4 v9, 0x0

    .line 4829
    .local v9, "changed":Z
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_c4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_ee

    .line 4830
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4831
    .local v13, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v2, v3, :cond_137

    .line 4832
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4833
    const/4 v9, 0x1

    .line 4837
    .end local v13    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_ee
    if-eqz v9, :cond_120

    .line 4838
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4839
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x2

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x3

    const/16 v16, 0x0

    aput-object v16, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4841
    :cond_120
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v16, 0x20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4829
    .restart local v13    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_137
    add-int/lit8 v8, v8, 0x1

    goto :goto_c4
.end method

.method public deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
    .registers 9
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .prologue
    const/4 v6, 0x0

    .line 1991
    if-nez p1, :cond_63

    .line 1992
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 1993
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1994
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1995
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1996
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_2c

    .line 1997
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1999
    :cond_2c
    if-nez v1, :cond_2f

    .line 2045
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2e
    return-void

    .line 2002
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2f
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 2003
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2004
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x5ff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2005
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$31;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$31;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2e

    .line 2036
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_63
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;-><init>()V

    .line 2037
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$32;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$32;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2e
.end method

.method public didAddedNewTask(ILandroid/util/SparseArray;)V
    .registers 5
    .param p1, "minDate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p2, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$20;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1760
    new-instance v0, Lorg/telegram/messenger/MessagesController$21;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$21;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1766
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 729
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v8, :cond_2e

    .line 730
    aget-object v3, p2, v12

    check-cast v3, Ljava/lang/String;

    .line 731
    .local v3, "location":Ljava/lang/String;
    aget-object v2, p2, v9

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 733
    .local v2, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 734
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    .line 735
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 736
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$6;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MessagesController$6;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 809
    .end local v2    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v3    # "location":Ljava/lang/String;
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    :cond_2d
    :goto_2d
    return-void

    .line 779
    :cond_2e
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v8, :cond_46

    .line 780
    aget-object v3, p2, v12

    check-cast v3, Ljava/lang/String;

    .line 781
    .restart local v3    # "location":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 782
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    goto :goto_2d

    .line 784
    .end local v3    # "location":Ljava/lang/String;
    :cond_46
    sget v8, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne p1, v8, :cond_2d

    .line 785
    aget-object v4, p2, v12

    check-cast v4, Ljava/lang/Integer;

    .line 786
    .local v4, "msgId":Ljava/lang/Integer;
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 787
    .local v5, "newMsgId":Ljava/lang/Integer;
    const/4 v8, 0x3

    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Long;

    .line 788
    .local v1, "did":Ljava/lang/Long;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 789
    .local v6, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_108

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_108

    .line 790
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 791
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 792
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 793
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_b6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v9, "chat_unlocked"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_ed

    :cond_b6
    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 794
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_fd

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fd

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v9, "chat_unlocked"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 796
    :cond_ed
    if-eqz v0, :cond_fd

    .line 797
    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_fd

    .line 798
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 802
    :cond_fd
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 804
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_108
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 805
    .restart local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_2d

    .line 806
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d
.end method

.method public generateJoinMessage(IZ)V
    .registers 15
    .param p1, "chat_id"    # I
    .param p2, "ignoreLeft"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 6131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 6132
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1c

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_1a

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v0, :cond_1d

    :cond_1a
    if-nez p2, :cond_1d

    .line 6179
    :cond_1c
    :goto_1c
    return-void

    .line 6136
    :cond_1d
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6137
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6138
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6139
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6140
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6141
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6142
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6143
    neg-int v0, p1

    int-to-long v10, v0

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6144
    iput-boolean v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 6145
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6146
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6147
    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_70

    .line 6148
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6150
    :cond_70
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6152
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6153
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6155
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6156
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6157
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6159
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$99;

    invoke-direct {v3, p0, v9}, Lorg/telegram/messenger/MessagesController$99;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6170
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6172
    new-instance v0, Lorg/telegram/messenger/MessagesController$100;

    invoke-direct {v0, p0, p1, v9}, Lorg/telegram/messenger/MessagesController$100;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1c
.end method

.method public generateUpdateMessage()V
    .registers 4

    .prologue
    .line 4970
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v1, :cond_12

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4994
    :cond_12
    :goto_12
    return-void

    .line 4973
    :cond_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;-><init>()V

    .line 4974
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;->prev_app_version:Ljava/lang/String;

    .line 4975
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$86;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$86;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_12
.end method

.method public getBlockedUsers(Z)V
    .registers 5
    .param p1, "cache"    # Z

    .prologue
    .line 1939
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v1, :cond_b

    .line 1967
    :cond_a
    :goto_a
    return-void

    .line 1942
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 1943
    if-eqz p1, :cond_18

    .line 1944
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V

    goto :goto_a

    .line 1946
    :cond_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    .line 1947
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    .line 1948
    const/16 v1, 0xc8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 1949
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$29;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$29;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_a
.end method

.method protected getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .registers 23
    .param p1, "channelId"    # I
    .param p2, "newDialogType"    # I
    .param p3, "taskId"    # J
    .param p5, "inputChannel"    # Lorg/telegram/tgnet/TLRPC$InputChannel;

    .prologue
    .line 5321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 5322
    .local v12, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v12, :cond_15

    .line 5323
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 5325
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5590
    :cond_1b
    :goto_1b
    return-void

    .line 5328
    :cond_1c
    const/16 v13, 0x64

    .line 5330
    .local v13, "limit":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5b

    .line 5331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5332
    .local v8, "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_1b

    .line 5335
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5336
    const/4 v13, 0x1

    .line 5353
    :cond_39
    if-nez p5, :cond_3f

    .line 5354
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p5

    .line 5356
    :cond_3f
    if-eqz p5, :cond_4b

    move-object/from16 v0, p5

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a2

    .line 5357
    :cond_4b
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1b

    .line 5358
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_1b

    .line 5338
    .end local v8    # "channelPts":Ljava/lang/Integer;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5339
    .restart local v8    # "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_9a

    .line 5340
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5341
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_8a

    .line 5342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5344
    :cond_8a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9a

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1b

    .line 5348
    :cond_9a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_1b

    .line 5363
    :cond_a2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_13b

    .line 5364
    const/4 v9, 0x0

    .line 5366
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_a9
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/TLRPC$InputChannel;->getObjectSize()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b4} :catch_136

    .line 5367
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x6

    :try_start_b5
    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5368
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5369
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5370
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c7} :catch_140

    move-object v9, v10

    .line 5374
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_c8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v6

    .line 5379
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "newTaskId":J
    :goto_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5380
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;-><init>()V

    .line 5381
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 5382
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    .line 5383
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    .line 5384
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    .line 5385
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_13e

    const/4 v2, 0x1

    :goto_fe
    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    .line 5386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start getChannelDifference with pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5387
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$95;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$95;-><init>(Lorg/telegram/messenger/MessagesController;IIJ)V

    invoke-virtual {v15, v14, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1b

    .line 5371
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_136
    move-exception v11

    .line 5372
    .local v11, "e":Ljava/lang/Exception;
    :goto_137
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c8

    .line 5376
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_13b
    move-wide/from16 v6, p3

    .restart local v6    # "newTaskId":J
    goto :goto_d0

    .line 5385
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    :cond_13e
    const/4 v2, 0x0

    goto :goto_fe

    .line 5371
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_140
    move-exception v11

    move-object v9, v10

    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_137
.end method

.method public getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 932
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDifference()V
    .registers 5

    .prologue
    .line 5607
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5608
    return-void
.end method

.method public getDifference(IIIZ)V
    .registers 9
    .param p1, "pts"    # I
    .param p2, "date"    # I
    .param p3, "qts"    # I
    .param p4, "slice"    # Z

    .prologue
    const/4 v3, 0x1

    .line 5611
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    .line 5612
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-nez v1, :cond_e

    .line 5613
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    .line 5845
    :cond_d
    :goto_d
    return-void

    .line 5616
    :cond_e
    if-nez p4, :cond_14

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_d

    .line 5619
    :cond_14
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    if-nez v1, :cond_1e

    .line 5620
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 5621
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 5623
    :cond_1e
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5624
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;-><init>()V

    .line 5625
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    .line 5626
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5627
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    .line 5628
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    if-nez v1, :cond_39

    .line 5629
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5631
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start getDifference with date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5632
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5633
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$96;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$96;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_d
.end method

.method public getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .registers 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 936
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method public getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .registers 12
    .param p1, "chat_id"    # I
    .param p2, "created"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 940
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 941
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v0, :cond_1a

    if-eqz p2, :cond_47

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-nez v5, :cond_1a

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v5, :cond_47

    .line 942
    :cond_1a
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 943
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V

    .line 946
    :try_start_2b
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_48

    .line 950
    :goto_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    .line 951
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 952
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 953
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v0, v7}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 954
    invoke-virtual {p0, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 957
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_47
    return-object v0

    .line 947
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_48
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .registers 4
    .param p1, "chat_id"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method public getNewDeleteTask(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1769
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$22;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1776
    return-void
.end method

.method public getUpdatesStartTime(I)J
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 5074
    if-nez p1, :cond_5

    .line 5075
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 5081
    :goto_4
    return-wide v0

    .line 5076
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 5077
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_4

    .line 5078
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 5079
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_4

    .line 5081
    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;
    .registers 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 917
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 921
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 922
    :cond_8
    const/4 v0, 0x0

    .line 924
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_9
.end method

.method public getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hideReportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 12
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1524
    if-nez p3, :cond_5

    if-nez p4, :cond_5

    .line 1545
    :cond_4
    :goto_4
    return-void

    .line 1527
    :cond_5
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1528
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1529
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1531
    long-to-int v3, p1

    if-eqz v3, :cond_4

    .line 1532
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1533
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p3, :cond_4b

    .line 1534
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1538
    :cond_3e
    :goto_3e
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$15;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$15;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 1535
    :cond_4b
    if-eqz p4, :cond_3e

    .line 1536
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3e
.end method

.method public isDialogMuted(J)Z
    .registers 10
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8080
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 8081
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8082
    .local v0, "mute_type":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_25

    .line 8090
    :cond_24
    :goto_24
    return v3

    .line 8084
    :cond_25
    const/4 v5, 0x3

    if-ne v0, v5, :cond_49

    .line 8085
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8086
    .local v1, "mute_until":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-ge v1, v5, :cond_24

    .end local v1    # "mute_until":I
    :cond_49
    move v3, v4

    .line 8090
    goto :goto_24
.end method

.method public loadChannelParticipants(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "chat_id"    # Ljava/lang/Integer;

    .prologue
    .line 2425
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2453
    :cond_10
    :goto_10
    return-void

    .line 2428
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2430
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2431
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2432
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2433
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2434
    const/16 v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 2435
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$43;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$43;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_10
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V
    .registers 6
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z

    .prologue
    .line 2456
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 2457
    return-void
.end method

.method public loadCurrentState()V
    .registers 4

    .prologue
    .line 5027
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-eqz v1, :cond_5

    .line 5053
    :goto_4
    return-void

    .line 5030
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 5031
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;-><init>()V

    .line 5032
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getState;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$88;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$88;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4
.end method

.method public loadDialogPhotos(IIIJZI)V
    .registers 22
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "fromCache"    # Z
    .param p7, "classGuid"    # I

    .prologue
    .line 1840
    if-eqz p6, :cond_13

    .line 1841
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getDialogPhotos(IIIJI)V

    .line 1893
    :cond_12
    :goto_12
    return-void

    .line 1843
    :cond_13
    if-lez p1, :cond_59

    .line 1844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1845
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_12

    .line 1848
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 1849
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 1850
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 1851
    move-wide/from16 v0, p4

    long-to-int v2, v0

    int-to-long v2, v2

    iput-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 1852
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1853
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$25;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$25;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1862
    .local v12, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_12

    .line 1863
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    .end local v12    # "reqId":I
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_59
    if-gez p1, :cond_12

    .line 1864
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1865
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1866
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1867
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1868
    move-wide/from16 v0, p4

    long-to-int v2, v0

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1869
    const-string v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1870
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1871
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$26;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$26;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1890
    .restart local v12    # "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_12
.end method

.method public loadDialogs(IIZ)V
    .registers 16
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z

    .prologue
    .line 3169
    iget-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v8, :cond_5

    .line 3224
    :goto_4
    return-void

    .line 3172
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3173
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load cacheOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cache = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3175
    if-eqz p3, :cond_4e

    .line 3176
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    if-nez p1, :cond_4b

    const/4 v8, 0x0

    :goto_47
    invoke-virtual {v9, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V

    goto :goto_4

    :cond_4b
    iget v8, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    goto :goto_47

    .line 3178
    :cond_4e
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 3179
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    iput p2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 3180
    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    .line 3181
    const/4 v2, 0x0

    .line 3182
    .local v2, "found":Z
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "a":I
    :goto_61
    if-ltz v0, :cond_12c

    .line 3183
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3184
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v8, :cond_72

    .line 3182
    :cond_6f
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    .line 3187
    :cond_72
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_aa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_aa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v9, "chat_unlocked"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e2

    :cond_aa
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3188
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_6f

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v9, "chat_unlocked"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 3189
    :cond_e2
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v8

    .line 3190
    .local v5, "lower_id":I
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v3, v8

    .line 3191
    .local v3, "high_id":I
    if-eqz v5, :cond_6f

    const/4 v8, 0x1

    if-eq v3, v8, :cond_6f

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_6f

    .line 3192
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 3193
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-lez v8, :cond_6f

    .line 3194
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3195
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3197
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v8, :cond_143

    .line 3198
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v8

    .line 3204
    .local v4, "id":I
    :goto_125
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3205
    const/4 v2, 0x1

    .line 3211
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "id":I
    .end local v5    # "lower_id":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_12c
    if-nez v2, :cond_135

    .line 3212
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3214
    :cond_135
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$56;

    invoke-direct {v9, p0, p2}, Lorg/telegram/messenger/MessagesController$56;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_4

    .line 3199
    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v3    # "high_id":I
    .restart local v5    # "lower_id":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_143
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v8, :cond_153

    .line 3200
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v8

    .restart local v4    # "id":I
    goto :goto_125

    .line 3202
    .end local v4    # "id":I
    :cond_153
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v4    # "id":I
    goto :goto_125
.end method

.method public loadFullChat(IIZ)V
    .registers 15
    .param p1, "chat_id"    # I
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1264
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    if-nez p3, :cond_1b

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1357
    :cond_1a
    :goto_1a
    return-void

    .line 1267
    :cond_1b
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    neg-int v1, p1

    int-to-long v4, v1

    .line 1270
    .local v4, "dialog_id":J
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1271
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1272
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 1273
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1274
    move-object v9, v0

    .line 1283
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    .local v9, "request":Lorg/telegram/tgnet/TLObject;
    :cond_40
    :goto_40
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$12;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController$12;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JII)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v8

    .line 1354
    .local v8, "reqId":I
    if-eqz p2, :cond_1a

    .line 1355
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v8, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_1a

    .line 1276
    .end local v8    # "reqId":I
    .end local v9    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 1277
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:I

    .line 1278
    move-object v9, v0

    .line 1279
    .restart local v9    # "request":Lorg/telegram/tgnet/TLObject;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_40

    .line 1280
    :cond_7a
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    goto :goto_40
.end method

.method public loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .registers 10
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1360
    if-eqz p1, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    if-nez p3, :cond_21

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1410
    :cond_20
    :goto_20
    return-void

    .line 1363
    :cond_21
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 1365
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1366
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v4

    .line 1367
    .local v0, "dialog_id":J
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_56

    .line 1368
    :cond_52
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    .line 1370
    :cond_56
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$13;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$13;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    .line 1409
    .local v3, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_20
.end method

.method public loadMessages(JIIIZIIIIZI)V
    .registers 32
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I

    .prologue
    .line 2906
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V

    .line 2907
    return-void
.end method

.method public loadMessages(JIIIZIIIIZIIIIZ)V
    .registers 40
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I
    .param p13, "first_unread"    # I
    .param p14, "unread_count"    # I
    .param p15, "last_date"    # I
    .param p16, "queryFromServer"    # Z

    .prologue
    .line 2910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load messages in chat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mindate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " guid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " load_type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last_message_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " firstUnread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " underad count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last_date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " queryFromServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2911
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    .line 2912
    .local v19, "lower_part":I
    if-nez p6, :cond_b1

    if-nez v19, :cond_cb

    .line 2913
    :cond_b1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V

    .line 2962
    :goto_ca
    return-void

    .line 2915
    :cond_cb
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 2916
    .local v20, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2917
    const/4 v3, 0x4

    move/from16 v0, p9

    if-ne v0, v3, :cond_131

    .line 2918
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2934
    :cond_e6
    :goto_e6
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 2935
    move/from16 v0, p4

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    .line 2936
    move/from16 v0, p5

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_date:I

    .line 2937
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v22

    new-instance v3, Lorg/telegram/messenger/MessagesController$53;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p1

    move/from16 v10, p8

    move/from16 v11, p13

    move/from16 v12, p10

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/MessagesController$53;-><init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v21

    .line 2960
    .local v21, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, v21

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_ca

    .line 2919
    .end local v21    # "reqId":I
    :cond_131
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_140

    .line 2920
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_e6

    .line 2921
    :cond_140
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_14f

    .line 2922
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_e6

    .line 2923
    :cond_14f
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_160

    if-eqz p4, :cond_160

    .line 2924
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_e6

    .line 2926
    :cond_160
    if-gez v19, :cond_e6

    if-eqz p4, :cond_e6

    .line 2927
    move/from16 v0, v19

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2928
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 2929
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2930
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    goto/16 :goto_e6
.end method

.method public loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 13
    .param p1, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1586
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 1658
    :cond_6
    :goto_6
    return-void

    .line 1590
    :cond_7
    if-eqz p1, :cond_7b

    .line 1591
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v5

    .line 1595
    .local v0, "dialogId":J
    :goto_c
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1598
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1600
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spam3_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v9, :cond_6

    .line 1603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spam_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1604
    .local v2, "hidden":Z
    if-eqz v2, :cond_8c

    .line 1605
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1606
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p1, :cond_80

    .line 1607
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1611
    :cond_6e
    :goto_6e
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$18;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$18;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6

    .line 1593
    .end local v0    # "dialogId":J
    .end local v2    # "hidden":Z
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_7b
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    int-to-long v0, v5

    .restart local v0    # "dialogId":J
    goto :goto_c

    .line 1608
    .restart local v2    # "hidden":Z
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_80
    if-eqz p2, :cond_6e

    .line 1609
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_6e

    .line 1629
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_8c
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;-><init>()V

    .line 1630
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;
    if-eqz p1, :cond_a9

    .line 1631
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1635
    :cond_9b
    :goto_9b
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$19;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$19;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_6

    .line 1632
    :cond_a9
    if-eqz p2, :cond_9b

    .line 1633
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_9b
.end method

.method public loadPinnedDialogs(JLjava/util/ArrayList;)V
    .registers 7
    .param p1, "newDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5931
    .local p3, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    if-eqz v1, :cond_5

    .line 6128
    :goto_4
    return-void

    .line 5934
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;-><init>()V

    .line 5935
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$98;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$98;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4
.end method

.method protected loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .registers 16
    .param p1, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "taskId"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 5247
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 5298
    :cond_14
    :goto_14
    return-void

    .line 5250
    :cond_15
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_27

    .line 5251
    cmp-long v7, p2, v10

    if-eqz v7, :cond_14

    .line 5252
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_14

    .line 5256
    :cond_27
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 5257
    .local v3, "inputPeer":Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->channel_id:I

    .line 5258
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->access_hash:J

    .line 5260
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5262
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 5263
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5265
    cmp-long v7, p2, v10

    if-nez v7, :cond_80

    .line 5266
    const/4 v0, 0x0

    .line 5268
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_53
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_7b

    .line 5269
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x0

    :try_start_5f
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5270
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_65} :catch_82

    move-object v0, v1

    .line 5274
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_66
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 5278
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_6e
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$93;

    invoke-direct {v8, p0, v4, v5, p1}, Lorg/telegram/messenger/MessagesController$93;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_14

    .line 5271
    .end local v4    # "newTaskId":J
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_7b
    move-exception v2

    .line 5272
    .local v2, "e":Ljava/lang/Exception;
    :goto_7c
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_66

    .line 5276
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_80
    move-wide v4, p2

    .restart local v4    # "newTaskId":J
    goto :goto_6e

    .line 5271
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_82
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_7c
.end method

.method public markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V
    .registers 9
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2072
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v4, p2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2073
    .local v2, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_2a

    .line 2074
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 2075
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2076
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 2077
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 2082
    .end local v0    # "a":I
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_2a
    return-void

    .line 2074
    .restart local v0    # "a":I
    .restart local v1    # "id":Ljava/lang/Integer;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public markDialogAsRead(JIIIZZ)V
    .registers 39
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # I
    .param p4, "max_positive_id"    # I
    .param p5, "max_date"    # I
    .param p6, "was"    # Z
    .param p7, "popup"    # Z

    .prologue
    .line 4127
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v25, v0

    .line 4128
    .local v25, "lower_part":I
    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v0, v4

    move/from16 v23, v0

    .line 4129
    .local v23, "high_id":I
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 4130
    .local v29, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "ghost_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 4132
    .local v22, "ghost_mode":Z
    if-eqz v25, :cond_f9

    .line 4133
    if-eqz p4, :cond_27

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_28

    .line 4251
    :cond_27
    :goto_27
    return-void

    .line 4136
    :cond_28
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v24

    .line 4138
    .local v24, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    move/from16 v0, p4

    int-to-long v6, v0

    .line 4139
    .local v6, "messageId":J
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_e4

    .line 4140
    new-instance v28, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    invoke-direct/range {v28 .. v28}, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;-><init>()V

    .line 4141
    .local v28, "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    move/from16 v0, v25

    neg-int v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4142
    move/from16 v0, p4

    move-object/from16 v1, v28

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->max_id:I

    .line 4143
    move-object/from16 v27, v28

    .line 4144
    .local v27, "req":Lorg/telegram/tgnet/TLObject;
    move/from16 v0, v25

    neg-int v3, v0

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v6, v4

    .line 4151
    .end local v28    # "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    :goto_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 4152
    .local v30, "value":Ljava/lang/Integer;
    if-nez v30, :cond_6a

    .line 4153
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 4155
    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 4158
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$64;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p7

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$64;-><init>(Lorg/telegram/messenger/MessagesController;JZI)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4186
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 4187
    .local v26, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "ghost_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 4188
    .local v21, "ghostMode":Z
    if-nez v21, :cond_27

    invoke-static {}, Lorg/telegram/messenger/DialogsController;->getInstance()Lorg/telegram/messenger/DialogsController;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/DialogsController;->isDialogPrivateRead(J)Z

    move-result v3

    if-nez v3, :cond_27

    .line 4189
    const v3, 0x7fffffff

    move/from16 v0, p4

    if-eq v0, v3, :cond_27

    .line 4190
    move-wide v12, v6

    .line 4191
    .local v12, "messageIdFinal":J
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$65;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lorg/telegram/messenger/MessagesController$65;-><init>(Lorg/telegram/messenger/MessagesController;JJI)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_27

    .line 4146
    .end local v12    # "messageIdFinal":J
    .end local v21    # "ghostMode":Z
    .end local v26    # "preferences":Landroid/content/SharedPreferences;
    .end local v27    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v30    # "value":Ljava/lang/Integer;
    :cond_e4
    new-instance v28, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    invoke-direct/range {v28 .. v28}, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;-><init>()V

    .line 4147
    .local v28, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4148
    move/from16 v0, p4

    move-object/from16 v1, v28

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->max_id:I

    .line 4149
    move-object/from16 v27, v28

    .restart local v27    # "req":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_55

    .line 4206
    .end local v6    # "messageId":J
    .end local v24    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v27    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v28    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    :cond_f9
    if-eqz p5, :cond_27

    .line 4209
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 4210
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v3, :cond_147

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_147

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_147

    .line 4211
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;-><init>()V

    .line 4212
    .local v27, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v27

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 4213
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 4214
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 4215
    move/from16 v0, p5

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    .line 4217
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$66;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$66;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4224
    .end local v27    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    :cond_147
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, p1

    move/from16 v20, p5

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 4226
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v14, Lorg/telegram/messenger/MessagesController$67;

    move-object/from16 v15, p0

    move-wide/from16 v16, p1

    move/from16 v18, p5

    move/from16 v19, p7

    invoke-direct/range {v14 .. v19}, Lorg/telegram/messenger/MessagesController$67;-><init>(Lorg/telegram/messenger/MessagesController;JIZ)V

    invoke-virtual {v3, v14}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4246
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v3, :cond_27

    if-eqz p6, :cond_27

    .line 4247
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 4248
    .local v16, "serverTime":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v16

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_27
.end method

.method public markMessageAsRead(JJI)V
    .registers 19
    .param p1, "dialog_id"    # J
    .param p3, "random_id"    # J
    .param p5, "ttl"    # I

    .prologue
    .line 4101
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 4102
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "ghost_mode"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 4103
    .local v9, "ghost_mode":Z
    if-nez v9, :cond_30

    invoke-static {}, Lorg/telegram/messenger/DialogsController;->getInstance()Lorg/telegram/messenger/DialogsController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/DialogsController;->isDialogPrivateRead(J)Z

    move-result v2

    if-nez v2, :cond_30

    .line 4104
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_30

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_30

    if-gtz p5, :cond_31

    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_31

    .line 4124
    :cond_30
    :goto_30
    return-void

    .line 4107
    :cond_31
    long-to-int v11, p1

    .line 4108
    .local v11, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v10, v2

    .line 4109
    .local v10, "high_id":I
    if-nez v11, :cond_30

    .line 4112
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    .line 4113
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v8, :cond_30

    .line 4116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4117
    .local v7, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4118
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v7, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 4119
    if-lez p5, :cond_30

    .line 4120
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    .line 4121
    .local v4, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget v3, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto :goto_30
.end method

.method public markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
    .registers 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v4, 0x0

    .line 4071
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 4072
    .local v11, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "ghost_mode"

    invoke-interface {v11, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 4073
    .local v7, "ghost_mode":Z
    if-nez v7, :cond_6c

    invoke-static {}, Lorg/telegram/messenger/DialogsController;->getInstance()Lorg/telegram/messenger/DialogsController;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/DialogsController;->isDialogPrivateRead(J)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 4074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4075
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v8, v1

    .line 4076
    .local v8, "messageId":J
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_3c

    .line 4077
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    or-long/2addr v8, v2

    .line 4079
    :cond_3c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4080
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 4081
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4082
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gez v1, :cond_6d

    .line 4083
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const/high16 v6, -0x80000000

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->markMessageAsRead(JJI)V

    .line 4098
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "messageId":J
    :cond_6c
    :goto_6c
    return-void

    .line 4085
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "messageId":J
    :cond_6d
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 4086
    .local v10, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4087
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$63;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$63;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v10, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6c
.end method

.method public performLogout(Z)V
    .registers 10
    .param p1, "byUser"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 4929
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4930
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4931
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4932
    const-string v2, "lastGifLoadTime"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastStickersLoadTime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4933
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4934
    const-string v2, "gifhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4936
    if-eqz p1, :cond_7c

    .line 4937
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->unregistedPush()V

    .line 4938
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;-><init>()V

    .line 4939
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$85;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4948
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    :goto_5c
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 4949
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4950
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 4951
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 4952
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->deleteAllAppAccounts()V

    .line 4953
    return-void

    .line 4946
    :cond_7c
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    goto :goto_5c
.end method

.method public pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .registers 7
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "id"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 2213
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;-><init>()V

    .line 2214
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2215
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->id:I

    .line 2216
    if-nez p3, :cond_1f

    const/4 v1, 0x1

    :goto_10
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->silent:Z

    .line 2217
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$36;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$36;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2226
    return-void

    .line 2216
    :cond_1f
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z
    .registers 24
    .param p1, "did"    # J
    .param p3, "pin"    # Z
    .param p4, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p5, "taskId"    # J

    .prologue
    .line 5863
    move-wide/from16 v0, p1

    long-to-int v8, v0

    .line 5864
    .local v8, "lower_id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5865
    .local v6, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v6, :cond_19

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v0, p3

    if-ne v13, v0, :cond_1f

    .line 5866
    :cond_19
    if-eqz v6, :cond_1d

    const/4 v13, 0x1

    .line 5927
    :goto_1c
    return v13

    .line 5866
    :cond_1d
    const/4 v13, 0x0

    goto :goto_1c

    .line 5868
    :cond_1f
    move/from16 v0, p3

    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5869
    if-eqz p3, :cond_a4

    .line 5870
    const/4 v9, 0x0

    .line 5871
    .local v9, "maxPinnedNum":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3f

    .line 5872
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5873
    .local v3, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v13, :cond_9b

    .line 5878
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3f
    add-int/lit8 v13, v9, 0x1

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5882
    .end local v2    # "a":I
    .end local v9    # "maxPinnedNum":I
    :goto_43
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 5883
    if-nez p3, :cond_70

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_70

    .line 5884
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5886
    :cond_70
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5887
    if-eqz v8, :cond_e8

    .line 5888
    const-wide/16 v14, -0x1

    cmp-long v13, p5, v14

    if-eqz v13, :cond_e8

    .line 5889
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;-><init>()V

    .line 5890
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    move/from16 v0, p3

    iput-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->pinned:Z

    .line 5891
    if-nez p4, :cond_93

    .line 5892
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    .line 5894
    :cond_93
    move-object/from16 v0, p4

    instance-of v13, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v13, :cond_a8

    .line 5895
    const/4 v13, 0x0

    goto :goto_1c

    .line 5876
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    .restart local v2    # "a":I
    .restart local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v9    # "maxPinnedNum":I
    :cond_9b
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5871
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 5880
    .end local v2    # "a":I
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "maxPinnedNum":I
    :cond_a4
    const/4 v13, 0x0

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto :goto_43

    .line 5897
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_a8
    move-object/from16 v0, p4

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5900
    const-wide/16 v14, 0x0

    cmp-long v13, p5, v14

    if-nez v13, :cond_fb

    .line 5901
    const/4 v4, 0x0

    .line 5903
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_b3
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v13

    add-int/lit8 v13, v13, 0x10

    invoke-direct {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_be} :catch_f6

    .line 5904
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v13, 0x1

    :try_start_bf
    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5905
    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 5906
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 5907
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d1} :catch_fe

    move-object v4, v5

    .line 5911
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_d2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .line 5916
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "newTaskId":J
    :goto_da
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/MessagesController$97;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$97;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v13, v12, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5926
    .end local v10    # "newTaskId":J
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_e8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1, v14}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    .line 5927
    const/4 v13, 0x1

    goto/16 :goto_1c

    .line 5908
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :catch_f6
    move-exception v7

    .line 5909
    .local v7, "e":Ljava/lang/Exception;
    :goto_f7
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 5913
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_fb
    move-wide/from16 v10, p5

    .restart local v10    # "newTaskId":J
    goto :goto_da

    .line 5908
    .end local v10    # "newTaskId":J
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_fe
    move-exception v7

    move-object v4, v5

    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_f7
.end method

.method public processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
    .registers 15
    .param p1, "chat_id"    # I
    .param p2, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "fromCache"    # Z
    .param p5, "force"    # Z
    .param p6, "byChannelUsers"    # Z
    .param p7, "pinnedMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2460
    .local p3, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p4, :cond_a

    if-lez p1, :cond_a

    if-nez p6, :cond_a

    .line 2461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2463
    :cond_a
    if-eqz p2, :cond_1a

    .line 2464
    new-instance v0, Lorg/telegram/messenger/MessagesController$44;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController$44;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2472
    :cond_1a
    return-void
.end method

.method public processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3884
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$61;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$61;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4036
    return-void
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3775
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$59;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$59;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3788
    return-void
.end method

.method public processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5
    .param p3, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1970
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$30;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$30;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1988
    return-void
.end method

.method public processLoadedDeleteTask(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "taskTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1808
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$24;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$24;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1837
    return-void
.end method

.method public processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    .registers 20
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "loadType"    # I
    .param p6, "resetEnd"    # Z
    .param p7, "migrate"    # Z
    .param p8, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;IIIZZZ)V"
        }
    .end annotation

    .prologue
    .line 3392
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesController$58;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move v5, p4

    move v6, p3

    move-object v7, p2

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController$58;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;ZZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3685
    return-void
.end method

.method public processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
    .registers 40
    .param p1, "messagesRes"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "count"    # I
    .param p5, "max_id"    # I
    .param p6, "offset_date"    # I
    .param p7, "isCache"    # Z
    .param p8, "classGuid"    # I
    .param p9, "first_unread"    # I
    .param p10, "last_message_id"    # I
    .param p11, "unread_count"    # I
    .param p12, "last_date"    # I
    .param p13, "load_type"    # I
    .param p14, "isChannel"    # Z
    .param p15, "isEnd"    # Z
    .param p16, "loadIndex"    # I
    .param p17, "queryFromServer"    # Z

    .prologue
    .line 3019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processLoadedMessages size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " load_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last_message_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstUnread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " underad count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last_date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queryFromServer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3020
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesController$55;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p7

    move/from16 v9, p4

    move/from16 v10, p13

    move/from16 v11, p17

    move/from16 v12, p9

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p10

    move/from16 v17, p14

    move/from16 v18, p16

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p15

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/MessagesController$55;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3166
    return-void
.end method

.method public processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V
    .registers 18
    .param p1, "res"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .param p2, "did"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "max_id"    # J
    .param p7, "fromCache"    # Z
    .param p8, "classGuid"    # I

    .prologue
    .line 2048
    if-nez p7, :cond_27

    .line 2049
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2050
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    .line 2055
    :cond_15
    new-instance v0, Lorg/telegram/messenger/MessagesController$33;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$33;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZIIII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2062
    :goto_26
    return-void

    .line 2051
    :cond_27
    if-eqz p1, :cond_31

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2052
    :cond_31
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto :goto_26
.end method

.method protected processNewChannelDifferenceParams(III)V
    .registers 14
    .param p1, "pts"    # I
    .param p2, "pts_count"    # I
    .param p3, "channelId"    # I

    .prologue
    .line 1661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNewChannelDifferenceParams pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " channeldId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1662
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    neg-int v7, p3

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1663
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1703
    :cond_3e
    :goto_3e
    return-void

    .line 1666
    :cond_3f
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1667
    .local v1, "channelPts":Ljava/lang/Integer;
    if-nez v1, :cond_6d

    .line 1668
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1669
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_64

    .line 1670
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1672
    :cond_64
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, p2

    if-ne v6, p1, :cond_8e

    .line 1675
    const-string v6, "APPLY CHANNEL PTS"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1676
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto :goto_3e

    .line 1678
    :cond_8e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p1, :cond_3e

    .line 1679
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1680
    .local v5, "updatesStartWaitTime":Ljava/lang/Long;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1681
    .local v3, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v3, :cond_b3

    .line 1682
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1684
    :cond_b3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_ce

    if-eqz v5, :cond_ce

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-gtz v6, :cond_12e

    .line 1685
    :cond_ce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD CHANNEL UPDATE TO QUEUE pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1686
    if-nez v5, :cond_101

    .line 1687
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :cond_101
    new-instance v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1690
    .local v4, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p1, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1691
    iput p2, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1692
    iput p3, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->chat_id:I

    .line 1693
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1694
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v0, :cond_129

    .line 1695
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    :cond_129
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e

    .line 1700
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    .end local v4    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_12e
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_3e
.end method

.method protected processNewDifferenceParams(IIII)V
    .registers 11
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "pts_count"    # I

    .prologue
    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewDifferenceParams seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1707
    const/4 v1, -0x1

    if-eq p2, v1, :cond_52

    .line 1708
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    add-int/2addr v1, p4

    if-ne v1, p2, :cond_77

    .line 1709
    const-string v1, "APPLY PTS"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1710
    sput p2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 1711
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1727
    :cond_52
    :goto_52
    const/4 v1, -0x1

    if-eq p1, v1, :cond_76

    .line 1728
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_dc

    .line 1729
    const-string v1, "APPLY SEQ"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1730
    sput p1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 1731
    const/4 v1, -0x1

    if-eq p3, v1, :cond_67

    .line 1732
    sput p3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 1734
    :cond_67
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1749
    :cond_76
    :goto_76
    return-void

    .line 1712
    :cond_77
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-eq v1, p2, :cond_52

    .line 1713
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_98

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_98

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_d7

    .line 1714
    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD UPDATE TO QUEUE pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1715
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_c6

    .line 1716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 1718
    :cond_c6
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1719
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1720
    iput p4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1721
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_52

    .line 1723
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_d7
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_52

    .line 1735
    :cond_dc
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-eq v1, p1, :cond_76

    .line 1736
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_fd

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_fd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_130

    .line 1737
    :cond_fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD UPDATE TO QUEUE seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1738
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_121

    .line 1739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 1741
    :cond_121
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1742
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    iput p1, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;->seq:I

    .line 1743
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_76

    .line 1745
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    :cond_130
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_76
.end method

.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .registers 95
    .param p4, "fromGetDifference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 6778
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chatsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6779
    if-nez p2, :cond_a

    if-eqz p3, :cond_18

    .line 6780
    :cond_a
    new-instance v4, Lorg/telegram/messenger/MessagesController$107;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$107;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6788
    :cond_18
    const/4 v4, 0x1

    .line 8072
    :goto_19
    return v4

    .line 6790
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 6792
    .local v46, "currentTime":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6793
    .local v11, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v89, Ljava/util/HashMap;

    invoke-direct/range {v89 .. v89}, Ljava/util/HashMap;-><init>()V

    .line 6794
    .local v89, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    .line 6795
    .local v74, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 6796
    .local v63, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6797
    .local v12, "editingMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 6798
    .local v16, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 6799
    .local v19, "markAsReadMessagesInbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 6800
    .local v20, "markAsReadMessagesOutbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 6801
    .local v22, "markAsReadMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 6802
    .local v21, "markAsReadEncrypted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 6803
    .local v23, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v72, 0x0

    .line 6804
    .local v72, "printChanged":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6805
    .local v15, "chatInfoToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipants;>;"
    new-instance v83, Ljava/util/ArrayList;

    invoke-direct/range {v83 .. v83}, Ljava/util/ArrayList;-><init>()V

    .line 6806
    .local v83, "updatesOnMainThread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 6807
    .local v76, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6809
    .local v14, "contactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v41, 0x1

    .line 6812
    .local v41, "checkForUsers":Z
    if-eqz p2, :cond_9a

    .line 6813
    new-instance v86, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v86 .. v86}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6814
    .local v86, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v30, 0x0

    .local v30, "a":I
    :goto_76
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_a2

    .line 6815
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6816
    .local v84, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v84

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    move-object/from16 v1, v84

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6814
    add-int/lit8 v30, v30, 0x1

    goto :goto_76

    .line 6819
    .end local v30    # "a":I
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_9a
    const/16 v41, 0x0

    .line 6820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v86, v0

    .line 6822
    .restart local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_a2
    if-eqz p3, :cond_cf

    .line 6823
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6824
    .local v40, "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_ab
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_d7

    .line 6825
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6826
    .local v38, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6824
    add-int/lit8 v30, v30, 0x1

    goto :goto_ab

    .line 6829
    .end local v30    # "a":I
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_cf
    const/16 v41, 0x0

    .line 6830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v40, v0

    .line 6832
    .restart local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_d7
    if-eqz p4, :cond_db

    .line 6833
    const/16 v41, 0x0

    .line 6836
    :cond_db
    if-nez p2, :cond_df

    if-eqz p3, :cond_ed

    .line 6837
    :cond_df
    new-instance v4, Lorg/telegram/messenger/MessagesController$108;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$108;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6846
    :cond_ed
    const/16 v58, 0x0

    .line 6848
    .local v58, "interfaceUpdateMask":I
    const/16 v36, 0x0

    .local v36, "c":I
    :goto_f1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_11c1

    .line 6849
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6850
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process update "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6851
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_127

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_4a7

    .line 6853
    :cond_127
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_19a

    .line 6854
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6864
    .local v61, "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_135
    :goto_135
    const/16 v38, 0x0

    .line 6865
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v39, 0x0

    .line 6866
    .local v39, "chat_id":I
    const/16 v85, 0x0

    .line 6867
    .local v85, "user_id":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_1df

    .line 6868
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v39, v0

    .line 6874
    :cond_14b
    :goto_14b
    if-eqz v39, :cond_179

    .line 6875
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6876
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_165

    .line 6877
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6879
    :cond_165
    if-nez v38, :cond_179

    .line 6880
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6881
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6884
    :cond_179
    if-eqz v41, :cond_2f9

    .line 6885
    if-eqz v39, :cond_203

    .line 6886
    if-nez v38, :cond_203

    .line 6887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found chat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6888
    const/4 v4, 0x0

    goto/16 :goto_19

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_19a
    move-object/from16 v4, v80

    .line 6856
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6857
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_1c8

    .line 6858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6860
    :cond_1c8
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_135

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_135

    .line 6861
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_135

    .line 6869
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v85    # "user_id":I
    :cond_1df
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_1f1

    .line 6870
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v39, v0

    goto/16 :goto_14b

    .line 6871
    :cond_1f1
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v4, :cond_14b

    .line 6872
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v85, v0

    goto/16 :goto_14b

    .line 6892
    :cond_203
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, 0x3

    .line 6893
    .local v44, "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_20f
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_2f9

    .line 6894
    const/16 v31, 0x0

    .line 6895
    .local v31, "allowMin":Z
    if-eqz v30, :cond_22c

    .line 6896
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_293

    .line 6897
    move-object/from16 v0, v61

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v85, v0

    .line 6898
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_22c

    .line 6899
    const/16 v31, 0x1

    .line 6908
    :cond_22c
    :goto_22c
    if-lez v85, :cond_2f5

    .line 6909
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6910
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_244

    if-nez v31, :cond_24e

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_24e

    .line 6911
    :cond_244
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6913
    :cond_24e
    if-eqz v84, :cond_258

    if-nez v31, :cond_276

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_276

    .line 6914
    :cond_258
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6915
    if-eqz v84, :cond_26e

    if-nez v31, :cond_26e

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_26e

    .line 6916
    const/16 v84, 0x0

    .line 6918
    :cond_26e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6920
    :cond_276
    if-nez v84, :cond_2c9

    .line 6921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6922
    const/4 v4, 0x0

    goto/16 :goto_19

    .line 6901
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_293
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_2aa

    .line 6902
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_2a7

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    move/from16 v85, v0

    :goto_2a6
    goto :goto_22c

    :cond_2a7
    const/16 v85, 0x0

    goto :goto_2a6

    .line 6904
    :cond_2aa
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    add-int/lit8 v6, v30, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6905
    .local v51, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_2c6

    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    :goto_2c4
    goto/16 :goto_22c

    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_2c6
    const/16 v85, 0x0

    goto :goto_2c4

    .line 6924
    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2c9
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_2f5

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_2f5

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_2f5

    .line 6925
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6926
    or-int/lit8 v58, v58, 0x4

    .line 6893
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2f5
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_20f

    .line 6931
    .end local v30    # "a":I
    .end local v31    # "allowMin":Z
    .end local v44    # "count":I
    :cond_2f9
    if-eqz v38, :cond_30c

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_30c

    .line 6932
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6935
    :cond_30c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_337

    .line 6936
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6937
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_442

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_442

    .line 6938
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 6944
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_337
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6945
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6946
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 6947
    .local v43, "clientUserId":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_459

    .line 6948
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 6958
    :goto_359
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_490

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6959
    .local v75, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_365
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6960
    .local v87, "value":Ljava/lang/Integer;
    if-nez v87, :cond_39a

    .line 6961
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6962
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6964
    :cond_39a
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_498

    if-eqz v38, :cond_3ac

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_498

    :cond_3ac
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_498

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v4, :cond_498

    const/4 v4, 0x1

    :goto_3bd
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6965
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3db

    .line 6966
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6967
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 6968
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 6971
    :cond_3db
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6972
    .local v69, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_49b

    .line 6973
    or-int/lit8 v58, v58, 0x8

    .line 6977
    :cond_402
    :goto_402
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6978
    .local v32, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_424

    .line 6979
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6980
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6982
    :cond_424
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6983
    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_43e

    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_43e

    .line 6984
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6848
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v85    # "user_id":I
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_43e
    :goto_43e
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_f1

    .line 6939
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v85    # "user_id":I
    :cond_442
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_337

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_337

    goto :goto_43e

    .line 6949
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v43    # "clientUserId":I
    :cond_459
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_46f

    .line 6950
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_359

    .line 6952
    :cond_46f
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v0, v43

    if-ne v4, v0, :cond_483

    .line 6953
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6955
    :cond_483
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_359

    .line 6958
    :cond_490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_365

    .line 6964
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_498
    const/4 v4, 0x0

    goto/16 :goto_3bd

    .line 6974
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_49b
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_402

    .line 6975
    or-int/lit8 v58, v58, 0x10

    goto/16 :goto_402

    .line 6986
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v85    # "user_id":I
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_4a7
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-eqz v4, :cond_4da

    .line 6987
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_4af
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_43e

    .line 6988
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v54, v0

    .line 6989
    .local v54, "id":J
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6987
    add-int/lit8 v30, v30, 0x1

    goto :goto_4af

    .line 6991
    .end local v30    # "a":I
    .end local v54    # "id":J
    :cond_4da
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v4, :cond_4e6

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-eqz v4, :cond_5bb

    .line 6994
    :cond_4e6
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-eqz v4, :cond_570

    move-object/from16 v4, v80

    .line 6995
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 6996
    .local v71, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_556

    .line 6997
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6998
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7003
    .local v48, "dialog_id":J
    :goto_515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7015
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_51b
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7016
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_53b

    .line 7017
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7019
    :cond_53b
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7000
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_556
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7001
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_515

    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_570
    move-object/from16 v4, v80

    .line 7005
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 7006
    .restart local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_5a1

    .line 7007
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7008
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7013
    .restart local v48    # "dialog_id":J
    :goto_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto/16 :goto_51b

    .line 7010
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_5a1
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7011
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_599

    .line 7020
    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_5bb
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-eqz v4, :cond_5e4

    .line 7021
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7022
    .local v35, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_5d9

    .line 7023
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 7024
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7026
    :cond_5d9
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43e

    .line 7027
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5e4
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    if-nez v4, :cond_5f0

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    if-eqz v4, :cond_6fb

    .line 7028
    :cond_5f0
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v4, v6, :cond_43e

    .line 7029
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 7030
    .local v78, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v4, v78, v6

    if-nez v4, :cond_60f

    .line 7031
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 7033
    :cond_60f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 7034
    .local v33, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    if-eqz v4, :cond_67f

    .line 7035
    if-eqz v33, :cond_65f

    .line 7036
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_629
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_64e

    .line 7037
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7038
    .local v73, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v73

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_67c

    .line 7039
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7040
    const/16 v72, 0x1

    .line 7044
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_64e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_65f

    .line 7045
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7074
    .end local v30    # "a":I
    :cond_65f
    :goto_65f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7036
    .restart local v30    # "a":I
    .restart local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_67c
    add-int/lit8 v30, v30, 0x1

    goto :goto_629

    .line 7049
    .end local v30    # "a":I
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_67f
    if-nez v33, :cond_693

    .line 7050
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 7051
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7053
    :cond_693
    const/16 v52, 0x0

    .line 7054
    .local v52, "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_699
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7055
    .local v77, "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_699

    .line 7056
    const/16 v52, 0x1

    .line 7057
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7058
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_6cb

    .line 7059
    const/16 v72, 0x1

    .line 7061
    :cond_6cb
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7065
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_6d3
    if-nez v52, :cond_65f

    .line 7066
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 7067
    .local v67, "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 7068
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7069
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7070
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7071
    const/16 v72, 0x1

    goto/16 :goto_65f

    .line 7076
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v52    # "exist":Z
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v78    # "uid":J
    :cond_6fb
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    if-eqz v4, :cond_70c

    .line 7077
    or-int/lit8 v58, v58, 0x20

    .line 7078
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7079
    :cond_70c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v4, :cond_71d

    .line 7080
    or-int/lit8 v58, v58, 0x4

    .line 7081
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7082
    :cond_71d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_72e

    .line 7083
    or-int/lit8 v58, v58, 0x1

    .line 7084
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7085
    :cond_72e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v4, :cond_74a

    .line 7086
    or-int/lit8 v58, v58, 0x2

    .line 7087
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 7088
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7089
    :cond_74a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_75f

    .line 7090
    move/from16 v0, v58

    or-int/lit16 v0, v0, 0x400

    move/from16 v58, v0

    .line 7091
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7092
    :cond_75f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    if-eqz v4, :cond_82e

    .line 7093
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    if-eqz v4, :cond_43e

    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43e

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z

    move-result v4

    if-nez v4, :cond_43e

    .line 7094
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 7095
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 7096
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 7097
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7098
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 7099
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 7100
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 7101
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 7102
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7103
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7104
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 7106
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7107
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7108
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7109
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_825

    .line 7110
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7111
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7113
    :cond_825
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7115
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_82e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    if-eqz v4, :cond_8a0

    .line 7116
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    if-eqz v4, :cond_86e

    .line 7117
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 7118
    .local v57, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_853

    .line 7119
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7121
    :cond_853
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43e

    .line 7122
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7125
    .end local v57    # "idx":I
    :cond_86e
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 7126
    .restart local v57    # "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_884

    .line 7127
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7129
    :cond_884
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43e

    .line 7130
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7133
    .end local v57    # "idx":I
    :cond_8a0
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    if-nez v4, :cond_43e

    .line 7135
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v4, :cond_935

    .line 7136
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    move-object/from16 v4, v80

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v45

    .line 7137
    .local v45, "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v45, :cond_43e

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43e

    .line 7138
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    move/from16 v42, v0

    .line 7139
    .local v42, "cid":I
    move/from16 v0, v42

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 7140
    .restart local v78    # "uid":J
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7141
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_8ed

    .line 7142
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7143
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7145
    :cond_8ed
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_8ef
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_43e

    .line 7146
    move-object/from16 v0, v45

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lorg/telegram/tgnet/TLRPC$Message;

    .line 7147
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7148
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7149
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7150
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7151
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7145
    add-int/lit8 v30, v30, 0x1

    goto :goto_8ef

    .line 7154
    .end local v30    # "a":I
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "cid":I
    .end local v45    # "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v78    # "uid":J
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_935
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    if-eqz v4, :cond_9ec

    .line 7155
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v50

    .line 7156
    .local v50, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v50, :cond_43e

    .line 7157
    move-object/from16 v0, v50

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v80

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    .line 7158
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 7159
    .restart local v78    # "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 7160
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-nez v33, :cond_97b

    .line 7161
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 7162
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7164
    :cond_97b
    const/16 v52, 0x0

    .line 7165
    .restart local v52    # "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_981
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7166
    .restart local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_981

    .line 7167
    const/16 v52, 0x1

    .line 7168
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7169
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7173
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_9a8
    if-nez v52, :cond_9cf

    .line 7174
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 7175
    .restart local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 7176
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7177
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7178
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7179
    const/16 v72, 0x1

    .line 7181
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_9cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7183
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v50    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v52    # "exist":Z
    .end local v78    # "uid":J
    :cond_9ec
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    if-eqz v4, :cond_a1a

    .line 7184
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_date:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7185
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v76

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7186
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a1a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    if-eqz v4, :cond_a3a

    .line 7187
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x0

    move-object/from16 v0, v80

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->inviter_id:I

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_43e

    .line 7188
    :cond_a3a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    if-eqz v4, :cond_a57

    .line 7189
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_43e

    .line 7190
    :cond_a57
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    if-nez v4, :cond_a63

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    if-eqz v4, :cond_a6c

    .line 7191
    :cond_a63
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    goto/16 :goto_43e

    .line 7192
    :cond_a6c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    if-eqz v4, :cond_a81

    .line 7193
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    move-object/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_43e

    .line 7194
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a81
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    if-eqz v4, :cond_acf

    move-object/from16 v53, v80

    .line 7195
    check-cast v53, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .line 7196
    .local v53, "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    move-object/from16 v0, v53

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v4, :cond_ac3

    .line 7197
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 7198
    .local v56, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v53

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7199
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    .line 7203
    .end local v56    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_aad
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$109;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$109;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_43e

    .line 7201
    :cond_ac3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteBlockedUser(I)V

    goto :goto_aad

    .line 7221
    .end local v53    # "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    :cond_acf
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v4, :cond_ade

    .line 7222
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7223
    :cond_ade
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    if-eqz v4, :cond_bdf

    move-object/from16 v68, v80

    .line 7224
    check-cast v68, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .line 7225
    .local v68, "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    move-object/from16 v0, v68

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    if-eqz v4, :cond_b0a

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    if-eqz v4, :cond_b0a

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b0a

    .line 7226
    new-instance v4, Lorg/telegram/messenger/MessagesController$110;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$110;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7233
    :cond_b0a
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_43e

    .line 7234
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 7235
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 7236
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7237
    const/4 v4, 0x1

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 7238
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 7239
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 7240
    const v4, 0xbdb28

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 7241
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7242
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7243
    const-wide/32 v6, 0xbdb28

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 7244
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_b73

    .line 7245
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 7246
    move-object/from16 v0, v66

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 7248
    :cond_b73
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 7249
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_b89

    .line 7250
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 7253
    :cond_b89
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7254
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7255
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7256
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_bcf

    .line 7257
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7258
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7260
    :cond_bcf
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7261
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7263
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v68    # "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_bdf
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v4, :cond_bee

    .line 7264
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7265
    :cond_bee
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v4, :cond_bfd

    .line 7266
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7267
    :cond_bfd
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v4, :cond_c0c

    .line 7268
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7269
    :cond_c0c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-eqz v4, :cond_c27

    .line 7270
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7271
    :cond_c27
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v4, :cond_c42

    .line 7272
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7273
    :cond_c42
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    if-eqz v4, :cond_d29

    .line 7274
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_c6c

    .line 7275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7277
    :cond_c6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 7278
    .local v37, "channelPts":Ljava/lang/Integer;
    if-nez v37, :cond_ce9

    .line 7279
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 7280
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_d0c

    .line 7281
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7282
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v38, :cond_cae

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_cbc

    .line 7283
    :cond_cae
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7285
    :cond_cbc
    if-eqz v38, :cond_cc4

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_cd8

    .line 7286
    :cond_cc4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7287
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7289
    :cond_cd8
    if-eqz v38, :cond_ce9

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v4, :cond_ce9

    .line 7290
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 7296
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_ce9
    :goto_ce9
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_43e

    .line 7297
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d1e

    .line 7298
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_43e

    .line 7299
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_43e

    .line 7293
    :cond_d0c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ce9

    .line 7302
    :cond_d1e
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_43e

    .line 7305
    .end local v37    # "channelPts":Ljava/lang/Integer;
    :cond_d29
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-nez v4, :cond_d35

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    if-eqz v4, :cond_db8

    .line 7306
    :cond_d35
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v0, v4

    move-wide/from16 v64, v0

    .line 7307
    .local v64, "message_id":J
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v64, v64, v6

    .line 7308
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7311
    .restart local v48    # "dialog_id":J
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-eqz v4, :cond_da3

    .line 7312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7313
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7319
    :goto_d68
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7320
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_d88

    .line 7321
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7323
    :cond_d88
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43e

    .line 7315
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_da3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7316
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d68

    .line 7324
    .end local v48    # "dialog_id":J
    .end local v64    # "message_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_db8
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-eqz v4, :cond_e0b

    .line 7325
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_de2

    .line 7326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7328
    :cond_de2
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7329
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_e00

    .line 7330
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 7331
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7333
    :cond_e00
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43e

    .line 7334
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e0b
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v4, :cond_e3e

    .line 7335
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_e35

    .line 7336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7338
    :cond_e35
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7339
    :cond_e3e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    if-eqz v4, :cond_e99

    .line 7340
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_e68

    .line 7341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_e68
    move-object/from16 v81, v80

    .line 7343
    check-cast v81, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .line 7344
    .local v81, "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseIntArray;

    .line 7345
    .local v34, "array":Landroid/util/SparseIntArray;
    if-nez v34, :cond_e8a

    .line 7346
    new-instance v34, Landroid/util/SparseIntArray;

    .end local v34    # "array":Landroid/util/SparseIntArray;
    invoke-direct/range {v34 .. v34}, Landroid/util/SparseIntArray;-><init>()V

    .line 7347
    .restart local v34    # "array":Landroid/util/SparseIntArray;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7349
    :cond_e8a
    move-object/from16 v0, v81

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;->id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->views:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_43e

    .line 7350
    .end local v34    # "array":Landroid/util/SparseIntArray;
    .end local v81    # "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    :cond_e99
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    if-eqz v4, :cond_ebe

    .line 7351
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x2

    move-object/from16 v0, v80

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->is_admin:Z

    if-eqz v8, :cond_ebc

    const/4 v8, 0x1

    :goto_eb3
    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_43e

    :cond_ebc
    const/4 v8, 0x0

    goto :goto_eb3

    .line 7352
    :cond_ebe
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v4, :cond_ecd

    .line 7353
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7354
    :cond_ecd
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v4, :cond_edc

    .line 7355
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7356
    :cond_edc
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v4, :cond_eeb

    .line 7357
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7358
    :cond_eeb
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v4, :cond_efa

    .line 7359
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7360
    :cond_efa
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v4, :cond_f09

    .line 7361
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7362
    :cond_f09
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v4, :cond_f18

    .line 7363
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7364
    :cond_f18
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v4, :cond_f24

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_1164

    .line 7366
    :cond_f24
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 7367
    .restart local v43    # "clientUserId":I
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_100d

    .line 7368
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7369
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7370
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_f5a

    .line 7371
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7373
    :cond_f5a
    if-nez v38, :cond_f72

    .line 7374
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7375
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7377
    :cond_f72
    if-eqz v38, :cond_f85

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_f85

    .line 7378
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 7388
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_f85
    :goto_f85
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_f9a

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_f9a

    .line 7389
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7391
    :cond_f9a
    if-nez p4, :cond_1035

    .line 7392
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 7393
    .restart local v44    # "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_fa6
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_1035

    .line 7394
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 7395
    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1031

    .line 7396
    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    .line 7397
    .restart local v85    # "user_id":I
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 7398
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_fda

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_fe4

    .line 7399
    :cond_fda
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7401
    :cond_fe4
    if-eqz v84, :cond_fec

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1008

    .line 7402
    :cond_fec
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7403
    if-eqz v84, :cond_1000

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1000

    .line 7404
    const/16 v84, 0x0

    .line 7406
    :cond_1000
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 7408
    :cond_1008
    if-nez v84, :cond_1031

    .line 7409
    const/4 v4, 0x0

    goto/16 :goto_19

    .line 7381
    .end local v30    # "a":I
    .end local v44    # "count":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_100d
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7382
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_f85

    .line 7383
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7384
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7385
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_f85

    .line 7393
    .restart local v30    # "a":I
    .restart local v44    # "count":I
    :cond_1031
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_fa6

    .line 7415
    .end local v30    # "a":I
    .end local v44    # "count":I
    :cond_1035
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_1120

    .line 7416
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 7426
    :goto_1049
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_1159

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7427
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1055
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7428
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_108a

    .line 7429
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7430
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7432
    :cond_108a
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_1161

    const/4 v4, 0x1

    :goto_1095
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7433
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_10b3

    .line 7434
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7435
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7436
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7438
    :cond_10b3
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_10d5

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_10c9

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10d5

    .line 7439
    :cond_10c9
    const-string v4, "-1"

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 7440
    const-string v4, ""

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 7443
    :cond_10d5
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7445
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7447
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7448
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_1117

    .line 7449
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7450
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7452
    :cond_1117
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7417
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_1120
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_1136

    .line 7418
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1049

    .line 7420
    :cond_1136
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_114c

    .line 7421
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7423
    :cond_114c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1049

    .line 7426
    :cond_1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_1055

    .line 7432
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_1161
    const/4 v4, 0x0

    goto/16 :goto_1095

    .line 7453
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1164
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    if-eqz v4, :cond_11a3

    .line 7454
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_118e

    .line 7455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_118e
    move-object/from16 v82, v80

    .line 7457
    check-cast v82, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .line 7458
    .local v82, "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v82

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;->id:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    goto/16 :goto_43e

    .line 7459
    .end local v82    # "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    :cond_11a3
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v4, :cond_11b2

    .line 7460
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7461
    :cond_11b2
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v4, :cond_43e

    .line 7462
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43e

    .line 7465
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_11c1
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11f8

    .line 7466
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11cf
    :goto_11cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7467
    .local v70, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 7468
    .local v60, "key":Ljava/lang/Long;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/ArrayList;

    .line 7469
    .local v88, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_11cf

    .line 7470
    const/16 v72, 0x1

    goto :goto_11cf

    .line 7475
    .end local v60    # "key":Ljava/lang/Long;
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v88    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_11f8
    if-eqz v72, :cond_11fd

    .line 7476
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 7479
    :cond_11fd
    move/from16 v59, v58

    .line 7480
    .local v59, "interfaceUpdateMaskFinal":I
    move/from16 v13, v72

    .line 7482
    .local v13, "printChangedArg":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1210

    .line 7483
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v14, v0}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 7486
    :cond_1210
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_122a

    .line 7487
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$111;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$111;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7500
    :cond_122a
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1254

    .line 7501
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 7502
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v9

    move-object/from16 v5, v63

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 7504
    :cond_1254
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12ac

    .line 7505
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1262
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12ac

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7506
    .restart local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 7507
    .local v5, "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/ArrayList;

    .line 7508
    .local v62, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_127b
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_1297

    .line 7509
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7508
    add-int/lit8 v30, v30, 0x1

    goto :goto_127b

    .line 7511
    :cond_1297
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    goto :goto_1262

    .line 7515
    .end local v5    # "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    .end local v30    # "a":I
    .end local v62    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_12ac
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_12bc

    .line 7516
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    .line 7519
    :cond_12bc
    new-instance v6, Lorg/telegram/messenger/MessagesController$112;

    move-object/from16 v7, p0

    move/from16 v8, v59

    move-object/from16 v9, v83

    move-object/from16 v10, v89

    invoke-direct/range {v6 .. v16}, Lorg/telegram/messenger/MessagesController$112;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7950
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v17, Lorg/telegram/messenger/MessagesController$113;

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Lorg/telegram/messenger/MessagesController$113;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 8040
    invoke-virtual/range {v89 .. v89}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12ef

    .line 8041
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    .line 8043
    :cond_12ef
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1301

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1301

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1321

    .line 8044
    :cond_1301
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_1313

    .line 8045
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 8047
    :cond_1313
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V

    .line 8049
    :cond_1321
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1330

    .line 8050
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 8052
    :cond_1330
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_1384

    .line 8053
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_1338
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_1384

    .line 8054
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 8055
    .local v60, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 8056
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v60

    invoke-virtual {v4, v0, v6, v1}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    .line 8057
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v60

    invoke-virtual {v4, v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 8058
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$114;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v60

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$114;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 8053
    add-int/lit8 v30, v30, 0x1

    goto :goto_1338

    .line 8065
    .end local v30    # "a":I
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "key":I
    :cond_1384
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13be

    .line 8066
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_138c
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_13be

    .line 8067
    move-object/from16 v0, v76

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .line 8068
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v24

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->chat_id:I

    move/from16 v25, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->max_date:I

    move/from16 v26, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->date:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 8066
    add-int/lit8 v30, v30, 0x1

    goto :goto_138c

    .line 8072
    .end local v30    # "a":I
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    :cond_13be
    const/4 v4, 0x1

    goto/16 :goto_19
.end method

.method public processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V
    .registers 56
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "fromQueue"    # Z

    .prologue
    .line 6296
    const/16 v32, 0x0

    .line 6297
    .local v32, "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v33, 0x0

    .line 6298
    .local v33, "needGetDiff":Z
    const/16 v34, 0x0

    .line 6299
    .local v34, "needReceivedQueue":Z
    const/16 v45, 0x0

    .line 6300
    .local v45, "updateStatus":Z
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    if-eqz v4, :cond_61

    .line 6301
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6302
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6303
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6737
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_22
    :goto_22
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    .line 6738
    if-nez p2, :cond_c4a

    .line 6739
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6740
    .local v26, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_3b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_c45

    .line 6741
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 6742
    .local v25, "key":Ljava/lang/Integer;
    if-eqz v32, :cond_c39

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c39

    .line 6743
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 6740
    :goto_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 6304
    .end local v10    # "a":I
    .end local v25    # "key":Ljava/lang/Integer;
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_61
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-nez v4, :cond_6d

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_4c1

    .line 6305
    :cond_6d
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-eqz v4, :cond_1e7

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->from_id:I

    move/from16 v51, v0

    .line 6306
    .local v51, "user_id":I
    :goto_79
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6307
    .local v48, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v49, 0x0

    .line 6308
    .local v49, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v50, 0x0

    .line 6309
    .local v50, "user3":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v16, 0x0

    .line 6311
    .local v16, "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v48, :cond_91

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_ad

    .line 6312
    :cond_91
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6313
    if-eqz v48, :cond_a5

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_a5

    .line 6314
    const/16 v48, 0x0

    .line 6316
    :cond_a5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6319
    :cond_ad
    const/16 v31, 0x0

    .line 6320
    .local v31, "needFwdUser":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_119

    .line 6321
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v4, :cond_e7

    .line 6322
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6323
    if-nez v49, :cond_e5

    .line 6324
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6325
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6327
    :cond_e5
    const/16 v31, 0x1

    .line 6329
    :cond_e7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v4, :cond_119

    .line 6330
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6331
    if-nez v16, :cond_117

    .line 6332
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6333
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6335
    :cond_117
    const/16 v31, 0x1

    .line 6339
    :cond_119
    const/16 v30, 0x0

    .line 6340
    .local v30, "needBotUser":Z
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    if-eqz v4, :cond_147

    .line 6341
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6342
    if-nez v50, :cond_145

    .line 6343
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6344
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6346
    :cond_145
    const/16 v30, 0x1

    .line 6350
    :cond_147
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_1f3

    .line 6351
    if-eqz v48, :cond_159

    if-eqz v31, :cond_155

    if-nez v49, :cond_155

    if-eqz v16, :cond_159

    :cond_155
    if-eqz v30, :cond_1ef

    if-nez v50, :cond_1ef

    :cond_159
    const/16 v29, 0x1

    .line 6360
    .local v29, "missingData":Z
    :goto_15b
    if-nez v29, :cond_1b4

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b4

    .line 6361
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_168
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1b4

    .line 6362
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6363
    .local v21, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_234

    .line 6364
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v21    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v42, v0

    .line 6365
    .local v42, "uid":I
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6366
    .local v22, "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_19c

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_234

    .line 6367
    :cond_19c
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6368
    if-eqz v22, :cond_1b0

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1b0

    .line 6369
    const/16 v22, 0x0

    .line 6371
    :cond_1b0
    if-nez v22, :cond_22c

    .line 6372
    const/16 v29, 0x1

    .line 6380
    .end local v10    # "a":I
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_1b4
    if-eqz v48, :cond_1e1

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_1e1

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_1e1

    .line 6381
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6382
    const/16 v45, 0x1

    .line 6385
    :cond_1e1
    if-eqz v29, :cond_238

    .line 6386
    const/16 v33, 0x1

    goto/16 :goto_22

    .line 6305
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_1e7
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    move/from16 v51, v0

    goto/16 :goto_79

    .line 6351
    .restart local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v30    # "needBotUser":Z
    .restart local v31    # "needFwdUser":Z
    .restart local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v51    # "user_id":I
    :cond_1ef
    const/16 v29, 0x0

    goto/16 :goto_15b

    .line 6353
    :cond_1f3
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6354
    .local v19, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v19, :cond_217

    .line 6355
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6356
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6358
    :cond_217
    if-eqz v19, :cond_225

    if-eqz v48, :cond_225

    if-eqz v31, :cond_221

    if-nez v49, :cond_221

    if-eqz v16, :cond_225

    :cond_221
    if-eqz v30, :cond_229

    if-nez v50, :cond_229

    :cond_225
    const/16 v29, 0x1

    .restart local v29    # "missingData":Z
    :goto_227
    goto/16 :goto_15b

    .end local v29    # "missingData":Z
    :cond_229
    const/16 v29, 0x0

    goto :goto_227

    .line 6375
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v10    # "a":I
    .restart local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v29    # "missingData":Z
    .restart local v42    # "uid":I
    :cond_22c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6361
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_234
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_168

    .line 6388
    .end local v10    # "a":I
    :cond_238
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v4, v6, :cond_43c

    .line 6389
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6390
    .local v27, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 6391
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v20

    .line 6392
    .local v20, "clientUserId":I
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_3e4

    .line 6393
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-eqz v4, :cond_3dc

    .line 6394
    move/from16 v0, v20

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6398
    :goto_268
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6399
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v51

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6400
    move/from16 v0, v51

    int-to-long v6, v0

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 6408
    :goto_280
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 6409
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 6410
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6411
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 6412
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6413
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 6414
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6415
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 6416
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 6417
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6418
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to_msg_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 6419
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6421
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_409

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    .line 6422
    .local v39, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_2ef
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 6423
    .local v52, "value":Ljava/lang/Integer;
    if-nez v52, :cond_324

    .line 6424
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 6425
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6427
    :cond_324
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v27

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ge v4, v6, :cond_411

    const/4 v4, 0x1

    :goto_32f
    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6429
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    move/from16 v0, v20

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_34d

    .line 6430
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6431
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6432
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6435
    :cond_34d
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 6436
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6437
    .local v35, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 6438
    .local v36, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6439
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6440
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6441
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_417

    .line 6442
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-nez v4, :cond_414

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_414

    const/16 v37, 0x1

    .line 6443
    .local v37, "printUpdate":Z
    :goto_3a0
    if-eqz v37, :cond_3a5

    .line 6444
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6446
    :cond_3a5
    new-instance v4, Lorg/telegram/messenger/MessagesController$102;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v51

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$102;-><init>(Lorg/telegram/messenger/MessagesController;ZILjava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6473
    :goto_3b5
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_3cf

    .line 6474
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$104;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$104;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6486
    :cond_3cf
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_22

    .line 6396
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_3dc
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_268

    .line 6402
    :cond_3e4
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6403
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6404
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 6405
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    goto/16 :goto_280

    .line 6421
    :cond_409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    goto/16 :goto_2ef

    .line 6427
    .restart local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v52    # "value":Ljava/lang/Integer;
    :cond_411
    const/4 v4, 0x0

    goto/16 :goto_32f

    .line 6442
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .restart local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_414
    const/16 v37, 0x0

    goto :goto_3a0

    .line 6457
    :cond_417
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v37

    .line 6458
    .restart local v37    # "printUpdate":Z
    if-eqz v37, :cond_42a

    .line 6459
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6461
    :cond_42a
    new-instance v4, Lorg/telegram/messenger/MessagesController$103;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$103;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3b5

    .line 6487
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v20    # "clientUserId":I
    .end local v27    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_43c
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-eq v4, v6, :cond_22

    .line 6488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get diff short message, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6489
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_49b

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_49b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4bd

    .line 6490
    :cond_49b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_4ad

    .line 6491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6493
    :cond_4ad
    const-string v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 6496
    :cond_4bd
    const/16 v33, 0x1

    goto/16 :goto_22

    .line 6500
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_4c1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-nez v4, :cond_4cd

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v4, :cond_be0

    .line 6501
    :cond_4cd
    const/16 v28, 0x0

    .line 6502
    .local v28, "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_4d0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_53d

    .line 6503
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6504
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v4, :cond_53a

    .line 6505
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_53a

    .line 6506
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v23

    .line 6507
    .local v23, "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v23, :cond_506

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_51c

    .line 6508
    :cond_506
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 6509
    .local v15, "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v23, :cond_51a

    .line 6510
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6512
    :cond_51a
    move-object/from16 v23, v15

    .line 6514
    .end local v15    # "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_51c
    if-eqz v23, :cond_524

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_53a

    .line 6515
    :cond_524
    if-nez v28, :cond_52b

    .line 6516
    new-instance v28, Ljava/util/HashMap;

    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 6518
    .restart local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_52b
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6502
    .end local v23    # "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_53a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4d0

    .line 6523
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_53d
    if-eqz v28, :cond_58c

    .line 6524
    const/4 v10, 0x0

    :goto_540
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_58c

    .line 6525
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6526
    .local v43, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_640

    .line 6527
    check-cast v43, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v17, v0

    .line 6528
    .local v17, "channelId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_640

    .line 6529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get diff because of min channel "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6530
    const/16 v33, 0x1

    .line 6536
    .end local v17    # "channelId":I
    :cond_58c
    if-nez v33, :cond_22

    .line 6537
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 6538
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6539
    const/4 v10, 0x0

    :goto_5ab
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_adb

    .line 6540
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6541
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_737

    .line 6542
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6543
    .local v46, "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6544
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6545
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6546
    add-int/lit8 v13, v10, 0x1

    .local v13, "b":I
    :goto_5e9
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_644

    .line 6547
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6548
    .local v44, "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_644

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_644

    .line 6549
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6550
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6551
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6552
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6553
    add-int/lit8 v13, v13, -0x1

    .line 6546
    add-int/lit8 v13, v13, 0x1

    goto :goto_5e9

    .line 6524
    .end local v13    # "b":I
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_640
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_540

    .line 6558
    .restart local v13    # "b":I
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_644
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_6a2

    .line 6559
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_69b

    .line 6560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get diff inner TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6561
    const/16 v33, 0x1

    .line 6688
    :cond_68e
    :goto_68e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6689
    add-int/lit8 v10, v10, -0x1

    .line 6539
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5ab

    .line 6563
    :cond_69b
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_68e

    .line 6565
    :cond_6a2
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_68e

    .line 6566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " need get diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6567
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_711

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_711

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_733

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_733

    .line 6568
    :cond_711
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_723

    .line 6569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6571
    :cond_723
    const-string v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6572
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68e

    .line 6574
    :cond_733
    const/16 v33, 0x1

    goto/16 :goto_68e

    .line 6577
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_737
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_85a

    .line 6578
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6579
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6580
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6581
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_75a
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_7a2

    .line 6582
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6583
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7a2

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    if-ne v4, v6, :cond_7a2

    .line 6584
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6585
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6586
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6587
    add-int/lit8 v13, v13, -0x1

    .line 6581
    add-int/lit8 v13, v13, 0x1

    goto :goto_75a

    .line 6592
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_7a2
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-eqz v4, :cond_7b7

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v46

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_7d3

    .line 6593
    :cond_7b7
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6594
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 6595
    const/16 v34, 0x1

    goto/16 :goto_68e

    .line 6596
    :cond_7d3
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_68e

    .line 6597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " need get diff, qts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6598
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_834

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_834

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_856

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_856

    .line 6599
    :cond_834
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_846

    .line 6600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    .line 6602
    :cond_846
    const-string v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6603
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68e

    .line 6605
    :cond_856
    const/16 v33, 0x1

    goto/16 :goto_68e

    .line 6608
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_85a
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_adb

    .line 6609
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v17

    .line 6610
    .restart local v17    # "channelId":I
    const/16 v41, 0x0

    .line 6611
    .local v41, "skipUpdate":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 6612
    .local v18, "channelPts":Ljava/lang/Integer;
    if-nez v18, :cond_8bb

    .line 6613
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 6614
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_943

    .line 6615
    const/4 v14, 0x0

    .local v14, "c":I
    :goto_894
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_8bb

    .line 6616
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6617
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_93f

    .line 6618
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 6619
    const/16 v41, 0x1

    .line 6627
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8bb
    :goto_8bb
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6628
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6629
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6630
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6631
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_8db
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_952

    .line 6632
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6633
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_952

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_952

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_952

    .line 6634
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6635
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6636
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6637
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6638
    add-int/lit8 v13, v13, -0x1

    .line 6631
    add-int/lit8 v13, v13, 0x1

    goto :goto_8db

    .line 6615
    .end local v13    # "b":I
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    .restart local v14    # "c":I
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_93f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_894

    .line 6624
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_943
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8bb

    .line 6643
    .restart local v13    # "b":I
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_952
    if-nez v41, :cond_ac1

    .line 6644
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_9d2

    .line 6645
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_9b0

    .line 6646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get channel diff inner TL_updates, channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6647
    if-nez v32, :cond_999

    .line 6648
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_68e

    .line 6649
    :cond_999
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68e

    .line 6650
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68e

    .line 6653
    :cond_9b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6654
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_68e

    .line 6656
    :cond_9d2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_68e

    .line 6657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " need get channel diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6658
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 6659
    .local v47, "updatesStartWaitTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    .line 6660
    .local v24, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v24, :cond_a45

    .line 6661
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 6663
    :cond_a45
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a60

    if-eqz v47, :cond_a60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_aa1

    .line 6664
    :cond_a60
    if-nez v47, :cond_a75

    .line 6665
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6667
    :cond_a75
    const-string v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6668
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 6669
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v12, :cond_a9a

    .line 6670
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6671
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6673
    :cond_a9a
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68e

    .line 6675
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    :cond_aa1
    if-nez v32, :cond_aaa

    .line 6676
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_68e

    .line 6677
    :cond_aaa
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68e

    .line 6678
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68e

    .line 6683
    .end local v24    # "gettingDifferenceChannel":Ljava/lang/Boolean;
    .end local v47    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_ac1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need load unknown channel = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_68e

    .line 6693
    .end local v13    # "b":I
    .end local v17    # "channelId":I
    .end local v18    # "channelPts":Ljava/lang/Integer;
    .end local v41    # "skipUpdate":Z
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_adb
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_b26

    .line 6694
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-eq v4, v6, :cond_af3

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-ne v4, v6, :cond_b23

    :cond_af3
    const/16 v38, 0x1

    .line 6698
    .local v38, "processUpdate":Z
    :goto_af5
    if-eqz v38, :cond_b44

    .line 6699
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6700
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    if-eqz v4, :cond_b15

    .line 6701
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 6703
    :cond_b15
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_22

    .line 6704
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_22

    .line 6694
    .end local v38    # "processUpdate":Z
    :cond_b23
    const/16 v38, 0x0

    goto :goto_af5

    .line 6696
    :cond_b26
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eq v4, v6, :cond_b3e

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_b3e

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v6, :cond_b41

    :cond_b3e
    const/16 v38, 0x1

    .restart local v38    # "processUpdate":Z
    :goto_b40
    goto :goto_af5

    .end local v38    # "processUpdate":Z
    :cond_b41
    const/16 v38, 0x0

    goto :goto_b40

    .line 6707
    .restart local v38    # "processUpdate":Z
    :cond_b44
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_bb5

    .line 6708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get diff TL_updatesCombined, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6713
    :goto_b70
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_b93

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_b93

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_bdc

    .line 6714
    :cond_b93
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_ba5

    .line 6715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 6717
    :cond_ba5
    const-string v4, "add TL_updates/Combined to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6718
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 6710
    :cond_bb5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need get diff TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_b70

    .line 6720
    :cond_bdc
    const/16 v33, 0x1

    goto/16 :goto_22

    .line 6724
    .end local v10    # "a":I
    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v38    # "processUpdate":Z
    :cond_be0
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    if-eqz v4, :cond_bef

    .line 6725
    const-string v4, "need get diff TL_updatesTooLong"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6726
    const/16 v33, 0x1

    goto/16 :goto_22

    .line 6727
    :cond_bef
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    if-eqz v4, :cond_bfd

    .line 6728
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_22

    .line 6729
    :cond_bfd
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    if-eqz v4, :cond_22

    .line 6730
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    if-eqz v4, :cond_c31

    .line 6731
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6732
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_22

    .line 6734
    :cond_c31
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto/16 :goto_22

    .line 6745
    .restart local v10    # "a":I
    .restart local v25    # "key":Ljava/lang/Integer;
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c39
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    goto/16 :goto_5e

    .line 6748
    .end local v25    # "key":Ljava/lang/Integer;
    :cond_c45
    if-eqz v33, :cond_c83

    .line 6749
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 6756
    .end local v10    # "a":I
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c4a
    if-eqz v34, :cond_c67

    .line 6757
    new-instance v40, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;

    invoke-direct/range {v40 .. v40}, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;-><init>()V

    .line 6758
    .local v40, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v40

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    .line 6759
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$105;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$105;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 6766
    .end local v40    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    :cond_c67
    if-eqz v45, :cond_c73

    .line 6767
    new-instance v4, Lorg/telegram/messenger/MessagesController$106;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$106;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6774
    :cond_c73
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 6775
    return-void

    .line 6751
    .restart local v10    # "a":I
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c83
    const/4 v10, 0x0

    :goto_c84
    const/4 v4, 0x3

    if-ge v10, v4, :cond_c4a

    .line 6752
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 6751
    add-int/lit8 v10, v10, 0x1

    goto :goto_c84
.end method

.method public putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .registers 7
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1067
    if-nez p1, :cond_4

    .line 1118
    :cond_3
    :goto_3
    return-void

    .line 1070
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1072
    .local v0, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_56

    .line 1073
    if-eqz v0, :cond_4a

    .line 1074
    if-nez p2, :cond_3

    .line 1075
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1076
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1077
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 1078
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 1079
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 1080
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 1081
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 1082
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1083
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_3

    .line 1085
    :cond_41
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1086
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_3

    .line 1090
    :cond_4a
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1093
    :cond_56
    if-nez p2, :cond_77

    .line 1094
    if-eqz v0, :cond_6b

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    if-eq v1, v2, :cond_6b

    .line 1095
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1097
    :cond_6b
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1098
    :cond_77
    if-nez v0, :cond_86

    .line 1099
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1100
    :cond_86
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_3

    .line 1101
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    .line 1102
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1103
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1104
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 1105
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 1106
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 1107
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 1108
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_c0

    .line 1109
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1110
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 1115
    :goto_b3
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1112
    :cond_c0
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1113
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_b3
.end method

.method public putChats(Ljava/util/ArrayList;Z)V
    .registers 7
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1129
    :cond_8
    return-void

    .line 1124
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1125
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    if-ge v0, v2, :cond_8

    .line 1126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1127
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {p0, v1, p2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V
    .registers 5
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "fromCache"    # Z

    .prologue
    .line 1132
    if-nez p1, :cond_3

    .line 1140
    :goto_2
    return-void

    .line 1135
    :cond_3
    if-eqz p2, :cond_11

    .line 1136
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1138
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public putEncryptedChats(Ljava/util/ArrayList;Z)V
    .registers 7
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1151
    :cond_8
    return-void

    .line 1146
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1147
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    if-ge v0, v1, :cond_8

    .line 1148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1149
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    .registers 9
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 978
    if-nez p1, :cond_6

    .line 1041
    :cond_5
    :goto_5
    return v2

    .line 981
    :cond_6
    if-eqz p2, :cond_73

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x14d

    if-eq v3, v4, :cond_73

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v4, 0xbdb28

    if-eq v3, v4, :cond_73

    move p2, v1

    .line 982
    :goto_18
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 983
    .local v0, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_3b

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 984
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_3b
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 987
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_4e
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_95

    .line 990
    if-eqz v0, :cond_88

    .line 991
    if-nez p2, :cond_5

    .line 992
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_75

    .line 993
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 994
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 999
    :goto_64
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_7e

    .line 1000
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1001
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_5

    .end local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_73
    move p2, v2

    .line 981
    goto :goto_18

    .line 996
    .restart local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_75
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 997
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_64

    .line 1003
    :cond_7e
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1004
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto/16 :goto_5

    .line 1008
    :cond_88
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1011
    :cond_95
    if-nez p2, :cond_c7

    .line 1012
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v3, v4, :cond_b0

    .line 1014
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1015
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1017
    :cond_b0
    if-eqz v0, :cond_5

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eq v3, v4, :cond_5

    move v2, v1

    .line 1018
    goto/16 :goto_5

    .line 1020
    :cond_c7
    if-nez v0, :cond_d6

    .line 1021
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1022
    :cond_d6
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_5

    .line 1023
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    .line 1024
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_105

    .line 1025
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 1026
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 1031
    :goto_ea
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_10e

    .line 1032
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1033
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 1038
    :goto_f8
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1028
    :cond_105
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 1029
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_ea

    .line 1035
    :cond_10e
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1036
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_f8
.end method

.method public putUsers(Ljava/util/ArrayList;Z)V
    .registers 8
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1064
    :cond_8
    :goto_8
    return-void

    .line 1048
    :cond_9
    const/4 v2, 0x0

    .line 1049
    .local v2, "updateStatus":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1050
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_f
    if-ge v0, v1, :cond_21

    .line 1051
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1052
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v3, p2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1053
    const/4 v2, 0x1

    .line 1050
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1056
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_21
    if-eqz v2, :cond_8

    .line 1057
    new-instance v4, Lorg/telegram/messenger/MessagesController$10;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$10;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public reRunUpdateTimerProc()V
    .registers 3

    .prologue
    .line 2476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 2477
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2478
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->updateTimerProc()V

    .line 2479
    return-void
.end method

.method public registerForPush(Ljava/lang/String;)V
    .registers 5
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 4997
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    if-nez v1, :cond_12

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-nez v1, :cond_13

    .line 5024
    :cond_12
    :goto_12
    return-void

    .line 5000
    :cond_13
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_1f

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5003
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 5004
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;-><init>()V

    .line 5005
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token_type:I

    .line 5006
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token:Ljava/lang/String;

    .line 5007
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$87;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_12
.end method

.method public reloadWebPages(JLjava/util/HashMap;)V
    .registers 13
    .param p1, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2965
    .local p3, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2966
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2967
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2968
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2969
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v0, :cond_34

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2971
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    :cond_34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2974
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 2975
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 2976
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$54;

    invoke-direct {v7, p0, v4, p1, p2}, Lorg/telegram/messenger/MessagesController$54;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_8

    .line 3015
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v4    # "url":Ljava/lang/String;
    :cond_4b
    return-void
.end method

.method public reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 15
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p5, "currentEncryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v8, 0x2

    .line 1548
    if-nez p3, :cond_8

    if-nez p4, :cond_8

    if-nez p5, :cond_8

    .line 1583
    :cond_7
    :goto_7
    return-void

    .line 1551
    :cond_8
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1552
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1553
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1555
    long-to-int v3, p1

    if-nez v3, :cond_61

    .line 1556
    if-eqz p5, :cond_7

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 1559
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;-><init>()V

    .line 1560
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 1561
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 1562
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 1563
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$16;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$16;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_7

    .line 1570
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    :cond_61
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;-><init>()V

    .line 1571
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;
    if-eqz p4, :cond_7e

    .line 1572
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1576
    :cond_71
    :goto_71
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$17;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$17;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_7

    .line 1573
    :cond_7e
    if-eqz p3, :cond_71

    .line 1574
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_71
.end method

.method public saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 6
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2396
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 2397
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2398
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2399
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2400
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 2401
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$41;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$41;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2407
    return-void
.end method

.method public saveRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .registers 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "asMask"    # Z

    .prologue
    .line 2410
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;-><init>()V

    .line 2411
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2412
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2413
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2414
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->unsave:Z

    .line 2415
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->attached:Z

    .line 2416
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$42;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$42;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2422
    return-void
.end method

.method public sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .registers 7
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "botHash"    # Ljava/lang/String;

    .prologue
    .line 4567
    if-nez p1, :cond_3

    .line 4584
    :goto_2
    return-void

    .line 4570
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4571
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4572
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4573
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4574
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4575
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$77;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$77;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2
.end method

.method public sendTyping(JII)V
    .registers 16
    .param p1, "dialog_id"    # J
    .param p3, "action"    # I
    .param p4, "classGuid"    # I

    .prologue
    .line 2808
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2810
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-eqz v7, :cond_23

    const-string v7, "ghost_mode"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_23

    invoke-static {}, Lorg/telegram/messenger/DialogsController;->getInstance()Lorg/telegram/messenger/DialogsController;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lorg/telegram/messenger/DialogsController;->isDialogPrivateTyping(J)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 2903
    :cond_23
    :goto_23
    return-void

    .line 2813
    :cond_24
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 2814
    .local v6, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v6, :cond_3c

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_23

    .line 2817
    :cond_3c
    if-nez v6, :cond_4c

    .line 2818
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2819
    .restart local v6    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    :cond_4c
    long-to-int v2, p1

    .line 2822
    .local v2, "lower_part":I
    const/16 v7, 0x20

    shr-long v8, p1, v7

    long-to-int v1, v8

    .line 2823
    .local v1, "high_id":I
    if-eqz v2, :cond_ee

    .line 2824
    const/4 v7, 0x1

    if-eq v1, v7, :cond_23

    .line 2828
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2829
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2830
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v7, :cond_7a

    .line 2831
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2832
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_23

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_23

    .line 2836
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7a
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v7, :cond_23

    .line 2839
    if-nez p3, :cond_ac

    .line 2840
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2854
    :cond_87
    :goto_87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$51;

    invoke-direct {v8, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$51;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v9, 0x2

    invoke-virtual {v7, v3, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2869
    .local v4, "reqId":I
    if-eqz p4, :cond_23

    .line 2870
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_23

    .line 2841
    .end local v4    # "reqId":I
    :cond_ac
    const/4 v7, 0x1

    if-ne p3, v7, :cond_b7

    .line 2842
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2843
    :cond_b7
    const/4 v7, 0x2

    if-ne p3, v7, :cond_c2

    .line 2844
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2845
    :cond_c2
    const/4 v7, 0x3

    if-ne p3, v7, :cond_cd

    .line 2846
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2847
    :cond_cd
    const/4 v7, 0x4

    if-ne p3, v7, :cond_d8

    .line 2848
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2849
    :cond_d8
    const/4 v7, 0x5

    if-ne p3, v7, :cond_e3

    .line 2850
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2851
    :cond_e3
    const/4 v7, 0x6

    if-ne p3, v7, :cond_87

    .line 2852
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_87

    .line 2873
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    :cond_ee
    if-nez p3, :cond_23

    .line 2876
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 2877
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_23

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_23

    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v7, :cond_23

    .line 2878
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;-><init>()V

    .line 2879
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 2880
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 2881
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 2882
    const/4 v7, 0x1

    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->typing:Z

    .line 2883
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$52;

    invoke-direct {v8, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$52;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v9, 0x2

    invoke-virtual {v7, v3, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2898
    .restart local v4    # "reqId":I
    if-eqz p4, :cond_23

    .line 2899
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_23
.end method

.method public setLastCreatedDialogId(JZ)V
    .registers 7
    .param p1, "dialog_id"    # J
    .param p3, "set"    # Z

    .prologue
    .line 961
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$9;-><init>(Lorg/telegram/messenger/MessagesController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 971
    return-void
.end method

.method public sortDialogs(Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v10, 0x0

    .line 8259
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8260
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8262
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8263
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8264
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8265
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8266
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8267
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8268
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8270
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8271
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_36
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4fc

    .line 8272
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8273
    .local v2, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v3, v6

    .line 8274
    .local v3, "high_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 8275
    .local v4, "lower_id":I
    if-eqz v4, :cond_1e1

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1e1

    .line 8276
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_8b

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c2

    :cond_8b
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8277
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_c7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 8278
    :cond_c2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8281
    :cond_c7
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-eqz v6, :cond_364

    .line 8282
    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 8283
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_157

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_e0

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v6, :cond_e4

    :cond_e0
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_157

    .line 8284
    :cond_e4
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_11b

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11b

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_152

    :cond_11b
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8285
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_157

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_157

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 8286
    :cond_152
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8290
    :cond_157
    if-eqz v1, :cond_1e1

    .line 8291
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_2e3

    .line 8292
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_19a

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19a

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1d7

    :cond_19a
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8293
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 8294
    :cond_1d7
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8295
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8345
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1e1
    :goto_1e1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v6, :cond_260

    .line 8346
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_224

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_224

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_25b

    :cond_224
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8347
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_260

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_260

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_260

    .line 8348
    :cond_25b
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8351
    :cond_260
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_2df

    .line 8352
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_2a3

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a3

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2da

    :cond_2a3
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8353
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_2df

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2df

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2df

    .line 8354
    :cond_2da
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8271
    :cond_2df
    :goto_2df
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_36

    .line 8299
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2e3
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_320

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_320

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_35d

    :cond_320
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8300
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 8301
    :cond_35d
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e1

    .line 8307
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_364
    if-gez v4, :cond_401

    .line 8308
    if-eqz p1, :cond_382

    .line 8309
    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 8310
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_382

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v6, :cond_382

    .line 8311
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8312
    add-int/lit8 v0, v0, -0x1

    .line 8313
    goto/16 :goto_2df

    .line 8316
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_382
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_3b9

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b9

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3f0

    :cond_3b9
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8317
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 8319
    :cond_3f0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8321
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8322
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e1

    .line 8325
    :cond_401
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 8326
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_1e1

    .line 8327
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_487

    .line 8328
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_449

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_449

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_480

    :cond_449
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8329
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 8330
    :cond_480
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e1

    .line 8334
    :cond_487
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_4be

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4be

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4f5

    :cond_4be
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8335
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 8336
    :cond_4f5
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e1

    .line 8360
    .end local v2    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4fc
    return-void
.end method

.method public startShortPoll(IZ)V
    .registers 5
    .param p1, "channelId"    # I
    .param p2, "stop"    # Z

    .prologue
    .line 5301
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$94;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$94;-><init>(Lorg/telegram/messenger/MessagesController;ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5314
    return-void
.end method

.method public toggleAdminMode(IZ)V
    .registers 6
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4587
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;-><init>()V

    .line 4588
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->chat_id:I

    .line 4589
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->enabled:Z

    .line 4590
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$78;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$78;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4599
    return-void
.end method

.method public toggleUserAdmin(IIZ)V
    .registers 7
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "admin"    # Z

    .prologue
    .line 4602
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;-><init>()V

    .line 4603
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->chat_id:I

    .line 4604
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4605
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->is_admin:Z

    .line 4606
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$79;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$79;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4612
    return-void
.end method

.method public toogleChannelInvites(IZ)V
    .registers 7
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4480
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;-><init>()V

    .line 4481
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4482
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->enabled:Z

    .line 4483
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$73;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$73;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4491
    return-void
.end method

.method public toogleChannelSignatures(IZ)V
    .registers 7
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4494
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;-><init>()V

    .line 4495
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4496
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    .line 4497
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$74;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$74;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4511
    return-void
.end method

.method public unblockUser(I)V
    .registers 7
    .param p1, "user_id"    # I

    .prologue
    .line 1922
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 1923
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1924
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_10

    .line 1936
    :goto_f
    return-void

    .line 1927
    :cond_10
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1928
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1929
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1930
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$28;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$28;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_f
.end method

.method public unregistedPush()V
    .registers 4

    .prologue
    .line 4915
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_24

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    .line 4916
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;-><init>()V

    .line 4917
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token:Ljava/lang/String;

    .line 4918
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token_type:I

    .line 4919
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$84;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$84;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4926
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    :cond_24
    return-void
.end method

.method public updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 8
    .param p1, "chat_id"    # I
    .param p2, "about"    # Ljava/lang/String;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4514
    if-nez p3, :cond_3

    .line 4535
    :goto_2
    return-void

    .line 4517
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;-><init>()V

    .line 4518
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4519
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->about:Ljava/lang/String;

    .line 4520
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$75;

    invoke-direct {v2, p0, p3, p2}, Lorg/telegram/messenger/MessagesController$75;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_2
.end method

.method public updateChannelUserName(ILjava/lang/String;)V
    .registers 7
    .param p1, "chat_id"    # I
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 4538
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 4539
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4540
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 4541
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$76;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$76;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4564
    return-void
.end method

.method public updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .registers 3
    .param p1, "config"    # Lorg/telegram/tgnet/TLRPC$TL_config;

    .prologue
    .line 338
    new-instance v0, Lorg/telegram/messenger/MessagesController$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$3;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;)V
    .registers 5
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8131
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 8132
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V
    .registers 24
    .param p1, "uid"    # J
    .param p4, "isBroadcast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 8135
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 8256
    :cond_8
    :goto_8
    return-void

    .line 8139
    :cond_9
    move-wide/from16 v0, p1

    long-to-int v14, v0

    if-nez v14, :cond_96

    const/4 v9, 0x1

    .line 8140
    .local v9, "isEncryptedChat":Z
    :goto_f
    const/4 v10, 0x0

    .line 8141
    .local v10, "lastMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    .line 8142
    .local v6, "channelId":I
    const/4 v13, 0x0

    .line 8143
    .local v13, "updateRating":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_13
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_b4

    .line 8144
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 8145
    .local v11, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v10, :cond_51

    if-nez v9, :cond_2f

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v14, v15, :cond_51

    :cond_2f
    if-nez v9, :cond_3d

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_47

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_47

    :cond_3d
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-lt v14, v15, :cond_51

    :cond_47
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v14, v15, :cond_60

    .line 8146
    :cond_51
    move-object v10, v11

    .line 8147
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v14, :cond_60

    .line 8148
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 8151
    :cond_60
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_85

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v14

    if-nez v14, :cond_85

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v14

    if-nez v14, :cond_85

    .line 8152
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 8153
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 8158
    :cond_85
    :goto_85
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_92

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v14

    if-eqz v14, :cond_92

    .line 8159
    const/4 v13, 0x1

    .line 8143
    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 8139
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v9    # "isEncryptedChat":Z
    .end local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v13    # "updateRating":Z
    :cond_96
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 8154
    .restart local v4    # "a":I
    .restart local v6    # "channelId":I
    .restart local v9    # "isEncryptedChat":Z
    .restart local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .restart local v13    # "updateRating":Z
    :cond_99
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v14

    if-eqz v14, :cond_85

    .line 8155
    const/4 v14, 0x0

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_85

    .line 8162
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_b4
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 8163
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8165
    if-eqz v10, :cond_8

    .line 8168
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8169
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v14, :cond_1c7

    .line 8170
    if-eqz v8, :cond_8

    .line 8171
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8173
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8174
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8175
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8176
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8177
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8179
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8180
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8181
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8182
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8183
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 8184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8185
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 8186
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_1a4

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1a4

    .line 8187
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8189
    :cond_1a4
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8190
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v14

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 8191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 8196
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_1c7
    const/4 v5, 0x0

    .line 8198
    .local v5, "changed":Z
    if-nez v8, :cond_2ef

    .line 8199
    if-nez p4, :cond_2dd

    .line 8200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 8201
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1da

    if-eqz v7, :cond_8

    :cond_1da
    if-eqz v7, :cond_1e0

    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_8

    .line 8204
    :cond_1e0
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 8205
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8206
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 8207
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8208
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 8209
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_2ec

    const/4 v14, 0x1

    :goto_1ff
    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 8210
    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v14

    if-nez v14, :cond_242

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hide_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_242

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v15, "chat_unlocked"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_283

    :cond_242
    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8211
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/MessagesController;->checkHiddenChats(Ljava/lang/Long;)Z

    move-result v14

    if-nez v14, :cond_2dd

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hide_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2dd

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v15, "chat_unlocked"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2dd

    .line 8212
    :cond_283
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8213
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8214
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8215
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_2d2

    .line 8216
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8217
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2d2

    .line 8218
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8222
    :cond_2d2
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 8223
    const/4 v5, 0x1

    .line 8249
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2dd
    :goto_2dd
    if-eqz v5, :cond_2e5

    .line 8250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 8253
    :cond_2e5
    if-eqz v13, :cond_8

    .line 8254
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    goto/16 :goto_8

    .line 8209
    .restart local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2ec
    const/4 v14, 0x0

    goto/16 :goto_1ff

    .line 8227
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2ef
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v14, :cond_301

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-lez v14, :cond_301

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v14, v15, :cond_32d

    :cond_301
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gez v14, :cond_313

    .line 8228
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_313

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v14, v15, :cond_32d

    :cond_313
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 8229
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32d

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ltz v14, :cond_32d

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v14, v15, :cond_2dd

    .line 8230
    :cond_32d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 8231
    .restart local v12    # "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_35a

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_35a

    .line 8232
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8234
    :cond_35a
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8235
    if-nez p4, :cond_369

    .line 8236
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 8237
    const/4 v5, 0x1

    .line 8239
    :cond_369
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8240
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_2dd

    .line 8241
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8242
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2dd

    .line 8243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2dd
.end method

.method public updateTimerProc()V
    .registers 33

    .prologue
    .line 2482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2484
    .local v10, "currentTime":J
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    .line 2486
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v25

    if-eqz v25, :cond_457

    .line 2487
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_20f

    sget-boolean v25, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v25, :cond_20f

    sget-boolean v25, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    if-nez v25, :cond_20f

    .line 2488
    sget-wide v26, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_151

    sget-wide v26, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    cmp-long v25, v26, v28

    if-lez v25, :cond_151

    .line 2489
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_7c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/32 v28, 0xd6d8

    cmp-long v25, v26, v28

    if-gez v25, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d9

    .line 2490
    :cond_7c
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2492
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v25, v0

    if-eqz v25, :cond_9b

    .line 2493
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2496
    :cond_9b
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2498
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v26, "mainconfig"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2499
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v25, "ghost_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 2500
    .local v12, "ghostMode":Z
    move-object/from16 v0, v17

    iput-boolean v12, v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2501
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$45;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/telegram/messenger/MessagesController$45;-><init>(Lorg/telegram/messenger/MessagesController;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 2540
    .end local v12    # "ghostMode":Z
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_d9
    :goto_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1ca

    .line 2541
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2542
    .local v14, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_f7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_1ca

    .line 2543
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2544
    .local v13, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 2545
    .local v23, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v23, :cond_14e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x5dc

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_14e

    .line 2546
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "QUEUE CHANNEL "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2547
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    .line 2542
    :cond_14e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 2518
    .end local v4    # "a":I
    .end local v13    # "key":I
    .end local v14    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_151
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v25, v0

    if-nez v25, :cond_d9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v28

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x7d0

    cmp-long v25, v26, v28

    if-ltz v25, :cond_d9

    .line 2519
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2520
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v25, v0

    if-eqz v25, :cond_19e

    .line 2521
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2523
    :cond_19e
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2524
    .restart local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2525
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$46;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$46;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto/16 :goto_d9

    .line 2552
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_1ca
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_1cb
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v4, v0, :cond_20f

    .line 2553
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_20c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v26

    const-wide/16 v28, 0x5dc

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_20c

    .line 2554
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2555
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 2552
    :cond_20c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1cb

    .line 2559
    .end local v4    # "a":I
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_227

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-eqz v25, :cond_2b6

    :cond_227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x1388

    cmp-long v25, v26, v28

    if-ltz v25, :cond_2b6

    .line 2560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    .line 2561
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_248
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v7, v0, :cond_2b6

    .line 2562
    if-nez v7, :cond_25d

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 2563
    .local v6, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_254
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_262

    .line 2561
    :goto_25a
    add-int/lit8 v7, v7, 0x1

    goto :goto_248

    .line 2562
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_25d
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    goto :goto_254

    .line 2566
    .restart local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_262
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_263
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_2b2

    .line 2567
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 2568
    .restart local v13    # "key":I
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V

    .line 2569
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2570
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    .line 2571
    if-nez v4, :cond_2af

    const/16 v25, 0x1

    :goto_28e
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    .line 2572
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$47;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lorg/telegram/messenger/MessagesController$47;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2566
    add-int/lit8 v4, v4, 0x1

    goto :goto_263

    .line 2571
    :cond_2af
    const/16 v25, 0x0

    goto :goto_28e

    .line 2600
    .end local v13    # "key":I
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    :cond_2b2
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_25a

    .line 2603
    .end local v4    # "a":I
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v7    # "b":I
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_337

    .line 2604
    const/16 v20, 0x0

    .line 2605
    .local v20, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    .line 2606
    .local v8, "currentServerTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2da
    :goto_2da
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_30b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2607
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v27, v8, -0x1e

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_2da

    .line 2608
    if-nez v20, :cond_2ff

    .line 2609
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2611
    .restart local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2ff
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2da

    .line 2614
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_30b
    if-eqz v20, :cond_337

    .line 2615
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_311
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_32b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 2616
    .local v21, "uid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_311

    .line 2618
    .end local v21    # "uid":Ljava/lang/Integer;
    :cond_32b
    new-instance v25, Lorg/telegram/messenger/MessagesController$48;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$48;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2626
    .end local v8    # "currentServerTime":I
    .end local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    if-eqz v25, :cond_39c

    .line 2627
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_39c

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2629
    .restart local v13    # "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    .line 2630
    .local v19, "timeout":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    cmp-long v25, v26, v28

    if-gez v25, :cond_399

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v25

    if-ltz v25, :cond_399

    .line 2633
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 2627
    :cond_399
    add-int/lit8 v4, v4, 0x1

    goto :goto_344

    .line 2638
    .end local v4    # "a":I
    .end local v13    # "key":I
    .end local v19    # "timeout":I
    :cond_39c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3be

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_457

    .line 2639
    :cond_3be
    const/16 v22, 0x0

    .line 2640
    .local v22, "updated":Z
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2641
    .local v15, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_3d2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_446

    .line 2642
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 2643
    .local v13, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2644
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3ef
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_42d

    .line 2645
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2647
    .local v24, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    move/from16 v25, v0

    if-eqz v25, :cond_42a

    .line 2648
    const/16 v18, 0x7530

    .line 2652
    .local v18, "timeToRemove":I
    :goto_40d
    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    move-wide/from16 v26, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_427

    .line 2653
    const/16 v22, 0x1

    .line 2654
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2655
    add-int/lit8 v4, v4, -0x1

    .line 2644
    :cond_427
    add-int/lit8 v4, v4, 0x1

    goto :goto_3ef

    .line 2650
    .end local v18    # "timeToRemove":I
    :cond_42a
    const/16 v18, 0x170c

    .restart local v18    # "timeToRemove":I
    goto :goto_40d

    .line 2658
    .end local v18    # "timeToRemove":I
    .end local v24    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_42d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_443

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2661
    add-int/lit8 v7, v7, -0x1

    .line 2641
    :cond_443
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d2

    .line 2665
    .end local v4    # "a":I
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v13    # "key":Ljava/lang/Long;
    :cond_446
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 2667
    if-eqz v22, :cond_457

    .line 2668
    new-instance v25, Lorg/telegram/messenger/MessagesController$49;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$49;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2677
    .end local v7    # "b":I
    .end local v15    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v22    # "updated":Z
    :cond_457
    return-void
.end method

.method public uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 7
    .param p1, "bigPhoto"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 2065
    if-eqz p1, :cond_49

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 2067
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 2069
    :cond_49
    return-void
.end method
