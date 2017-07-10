.class public Lorg/telegram/messenger/MessagesStorage;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesStorage$Hole;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesStorage;

.field public static lastDateValue:I

.field public static lastPtsValue:I

.field public static lastQtsValue:I

.field public static lastSecretVersion:I

.field public static lastSeqValue:I

.field public static secretG:I

.field public static secretPBytes:[B


# instance fields
.field private cacheFile:Ljava/io/File;

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field private lastSavedDate:I

.field private lastSavedPts:I

.field private lastSavedQts:I

.field private lastSavedSeq:I

.field private lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private storageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 49
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 50
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 51
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 52
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 53
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 54
    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 61
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "storageQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    .line 57
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    .line 58
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    .line 59
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesStorage;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V
    .registers 6
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)[J
    .registers 8
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Ljava/util/HashMap;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V
    .registers 6
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesStorage;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesStorage;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MessagesStorage;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesStorage;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/MessagesStorage;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesStorage;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/MessagesStorage;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/messenger/MessagesStorage;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5710
    .local p1, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eqz v3, :cond_1d

    .line 5711
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_c2

    .line 5712
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 5713
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5721
    :cond_1d
    :goto_1d
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v3, :cond_36

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 5722
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5724
    :cond_36
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v3, :cond_db

    .line 5725
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    if-eqz v3, :cond_59

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 5726
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5728
    :cond_59
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    if-eqz v3, :cond_78

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 5729
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5731
    :cond_78
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    if-eqz v3, :cond_97

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 5732
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5734
    :cond_97
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_db

    .line 5735
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_db

    .line 5736
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5737
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 5738
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5735
    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 5716
    .end local v0    # "a":I
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_c2
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 5717
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    .line 5743
    :cond_db
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_118

    .line 5744
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_e4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_118

    .line 5745
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 5746
    .local v1, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_106

    .line 5747
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5744
    :cond_103
    :goto_103
    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    .line 5748
    .restart local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_106
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_103

    .line 5749
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 5753
    .end local v0    # "a":I
    :cond_118
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_13b

    .line 5754
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    if-eqz v3, :cond_13b

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 5755
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5758
    :cond_13b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v3, :cond_17d

    .line 5759
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v3, :cond_15e

    .line 5760
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15e

    .line 5761
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5764
    :cond_15e
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v3, :cond_17d

    .line 5765
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17d

    .line 5766
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5770
    :cond_17d
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-gez v3, :cond_198

    .line 5771
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_198

    .line 5772
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5775
    :cond_198
    return-void
.end method

.method private cleanupInternal()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 541
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 542
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 543
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 544
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 545
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 547
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    .line 548
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    .line 549
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    .line 550
    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    .line 552
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 553
    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-eqz v0, :cond_23

    .line 555
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    .line 556
    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 558
    :cond_23
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    if-eqz v0, :cond_2e

    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 560
    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    .line 562
    :cond_2e
    return-void
.end method

.method private closeHolesInTable(Ljava/lang/String;JII)V
    .registers 24
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "minId"    # I
    .param p5, "maxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5483
    const/4 v8, 0x0

    .line 5484
    .local v8, "ok":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT start, end FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WHERE uid = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 5485
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v7, 0x0

    .line 5486
    .local v7, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_72
    :goto_72
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 5487
    if-nez v7, :cond_7f

    .line 5488
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5490
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_7f
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 5491
    .local v9, "start":I
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5492
    .local v5, "end":I
    if-ne v9, v5, :cond_8e

    const/4 v11, 0x1

    if-eq v9, v11, :cond_72

    .line 5495
    :cond_8e
    new-instance v11, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_98} :catch_99

    goto :goto_72

    .line 5536
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v9    # "start":I
    :catch_99
    move-exception v4

    .line 5537
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5539
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9d
    return-void

    .line 5497
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_9e
    :try_start_9e
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5498
    if-eqz v7, :cond_9d

    .line 5499
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_a4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_9d

    .line 5500
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5501
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_113

    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_113

    .line 5502
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5499
    :cond_110
    :goto_110
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 5503
    :cond_113
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_17e

    .line 5504
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_11d} :catch_99

    move/from16 v0, p4

    if-eq v11, v0, :cond_110

    .line 5506
    :try_start_121
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " SET end = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_178} :catch_179

    goto :goto_110

    .line 5507
    :catch_179
    move-exception v4

    .line 5508
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_17a
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_110

    .line 5511
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_17e
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_1eb

    .line 5512
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_188} :catch_99

    move/from16 v0, p5

    if-eq v11, v0, :cond_110

    .line 5514
    :try_start_18c
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " SET start = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1e3} :catch_1e5

    goto/16 :goto_110

    .line 5515
    :catch_1e5
    move-exception v4

    .line 5516
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_1e6
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_110

    .line 5520
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5521
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "REPLACE INTO "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " VALUES(?, ?, ?)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 5522
    .local v10, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5523
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5524
    const/4 v11, 0x2

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5525
    const/4 v11, 0x3

    move/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5526
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5527
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5528
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5529
    const/4 v11, 0x2

    move/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5530
    const/4 v11, 0x3

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5531
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5532
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_291} :catch_99

    goto/16 :goto_110
.end method

.method public static createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V
    .registers 11
    .param p0, "did"    # J
    .param p2, "state5"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p3, "state6"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p4, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5936
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5937
    invoke-virtual {p2, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5938
    if-ne p4, v2, :cond_33

    move v1, v2

    :goto_d
    invoke-virtual {p2, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5939
    invoke-virtual {p2, v5, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5940
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5942
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_17
    const/4 v1, 0x5

    if-ge v0, v1, :cond_37

    .line 5943
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5944
    invoke-virtual {p3, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5945
    invoke-virtual {p3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5946
    if-ne p4, v2, :cond_35

    move v1, v2

    :goto_26
    invoke-virtual {p3, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5947
    const/4 v1, 0x4

    invoke-virtual {p3, v1, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5948
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5942
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0    # "b":I
    :cond_33
    move v1, v3

    .line 5938
    goto :goto_d

    .restart local v0    # "b":I
    :cond_35
    move v1, v3

    .line 5946
    goto :goto_26

    .line 5950
    :cond_37
    return-void
.end method

.method private doneHolesInTable(Ljava/lang/String;JI)V
    .registers 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "max_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5347
    if-nez p4, :cond_6c

    .line 5348
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE uid = %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5352
    :goto_38
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 5353
    .local v0, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5354
    invoke-virtual {v0, v6, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5355
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5356
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5357
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5358
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5359
    return-void

    .line 5350
    .end local v0    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6c
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE uid = %d AND start = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_38
.end method

.method private fixNotificationSettings()V
    .registers 3

    .prologue
    .line 607
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$4;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method private fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 7
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/16 v4, 0x41

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5329
    if-nez p1, :cond_7

    .line 5344
    :cond_6
    :goto_6
    return-void

    .line 5332
    :cond_7
    const/4 v0, 0x0

    .line 5333
    .local v0, "ok":Z
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    if-eqz v1, :cond_22

    .line 5334
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v1, v1

    if-nez v1, :cond_6

    .line 5335
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 5336
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    goto :goto_6

    .line 5338
    :cond_22
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_6

    .line 5339
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5340
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 5341
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    .line 5342
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_6
.end method

.method private formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .registers 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 3672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3673
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 3674
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    :cond_18
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 3677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 3678
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    :cond_2f
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3682
    :cond_34
    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3683
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4a

    .line 3684
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3686
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesStorage;
    .registers 4

    .prologue
    .line 64
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 65
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    if-nez v0, :cond_14

    .line 66
    const-class v3, Lorg/telegram/messenger/MessagesStorage;

    monitor-enter v3

    .line 67
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 68
    if-nez v0, :cond_13

    .line 69
    new-instance v1, Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesStorage;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 71
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 73
    :cond_14
    return-object v0

    .line 71
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    goto :goto_16
.end method

.method private getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .registers 4
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4011
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_14

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_14

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_20

    .line 4013
    :cond_14
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4014
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4015
    :cond_20
    const/4 v0, 0x1

    .line 4019
    :goto_21
    return v0

    .line 4016
    :cond_22
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2e

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4017
    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    .line 4019
    :cond_30
    const/4 v0, -0x1

    goto :goto_21
.end method

.method private isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 3
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4211
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v0, :cond_16

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->selective:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private loadPendingTasks()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$7;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 819
    return-void
.end method

.method private markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 33
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5073
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5074
    .local v9, "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5075
    .local v10, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_1d0

    .line 5076
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5077
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_18
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_51

    .line 5078
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5079
    .local v20, "messageId":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v25, 0x20

    shl-long v26, v26, v25

    or-long v20, v20, v26

    .line 5080
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_49

    .line 5081
    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5083
    :cond_49
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5077
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 5085
    .end local v20    # "messageId":J
    :cond_51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5089
    .end local v4    # "a":I
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .local v17, "ids":Ljava/lang/String;
    :goto_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "SELECT uid, data, read_state, out FROM messages WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 5090
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5091
    .local v16, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_1ca

    move-result v6

    .line 5093
    .local v6, "currentUser":I
    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v25

    if-eqz v25, :cond_14e

    .line 5094
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 5095
    .local v12, "did":J
    int-to-long v0, v6

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-eqz v25, :cond_84

    .line 5098
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    .line 5099
    .local v22, "read_state":I
    if-eqz v22, :cond_ab

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_de

    :cond_ab
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v25

    if-nez v25, :cond_de

    .line 5100
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 5101
    .local v24, "unread_count":Ljava/lang/Integer;
    if-nez v24, :cond_c9

    .line 5102
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 5104
    :cond_c9
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 5105
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5107
    .end local v24    # "unread_count":Ljava/lang/Integer;
    :cond_de
    long-to-int v0, v12

    move/from16 v25, v0

    if-nez v25, :cond_84

    .line 5110
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 5111
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_84

    .line 5112
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v18

    .line 5113
    .local v18, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5114
    if-eqz v18, :cond_84

    .line 5115
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v25, v0

    if-eqz v25, :cond_1dc

    .line 5116
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_128
    :goto_128
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_84

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5117
    .local v19, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5118
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_128

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_128

    .line 5119
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_149} :catch_14a

    goto :goto_128

    .line 5135
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "did":J
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v19    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v22    # "read_state":I
    :catch_14a
    move-exception v11

    .line 5136
    .local v11, "e":Ljava/lang/Exception;
    :try_start_14b
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5138
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_14e
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5139
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 5141
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_168
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_234

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 5142
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 5143
    .local v12, "did":Ljava/lang/Long;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    const-string v27, "UPDATE dialogs SET unread_count = max(0, ((SELECT unread_count FROM dialogs WHERE did = ?) - ?)) WHERE did = ?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v23

    .line 5145
    .local v23, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5146
    const/16 v25, 0x1

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5147
    const/16 v27, 0x2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5148
    const/16 v25, 0x3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5149
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5150
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_1c9} :catch_1ca

    goto :goto_168

    .line 5160
    .end local v6    # "currentUser":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "did":Ljava/lang/Long;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v16    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v17    # "ids":Ljava/lang/String;
    .end local v23    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_1ca
    move-exception v11

    .line 5161
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5163
    const/4 v9, 0x0

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1cf
    return-object v9

    .line 5087
    .restart local v9    # "dialogsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v10    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1d0
    :try_start_1d0
    const-string v25, ","

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d9} :catch_1ca

    move-result-object v17

    .restart local v17    # "ids":Ljava/lang/String;
    goto/16 :goto_55

    .line 5122
    .restart local v6    # "currentUser":I
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v12, "did":J
    .restart local v16    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v22    # "read_state":I
    :cond_1dc
    :try_start_1dc
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v25, v0

    if-eqz v25, :cond_84

    .line 5123
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5124
    .restart local v15    # "file":Ljava/io/File;
    if-eqz v15, :cond_20b

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_20b

    .line 5125
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5127
    :cond_20b
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v15

    .line 5128
    if-eqz v15, :cond_84

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_84

    .line 5129
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_232} :catch_14a

    goto/16 :goto_84

    .line 5153
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "did":J
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v22    # "read_state":I
    :cond_234
    :try_start_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "DELETE FROM messages WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "DELETE FROM bot_keyboard WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "DELETE FROM messages_seq WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "DELETE FROM media_v2 WHERE mid IN(%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v25, v0

    const-string v26, "DELETE FROM media_counts_v2 WHERE 1"

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5158
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_2e4} :catch_1ca

    goto/16 :goto_1cf
.end method

.method private markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4977
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_48

    .line 4978
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_48

    .line 4979
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4980
    .local v7, "key":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4981
    .local v10, "messageId":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 0"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4978
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4984
    .end local v2    # "b":I
    .end local v7    # "key":I
    .end local v10    # "messageId":J
    :cond_48
    if-eqz p2, :cond_90

    .line 4985
    const/4 v2, 0x0

    .restart local v2    # "b":I
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_90

    .line 4986
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4987
    .restart local v7    # "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4988
    .restart local v10    # "messageId":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 1"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4985
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 4991
    .end local v2    # "b":I
    .end local v7    # "key":I
    .end local v10    # "messageId":J
    :cond_90
    if-eqz p3, :cond_e5

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e5

    .line 4992
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4993
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v14, v12

    const/16 v12, 0x20

    shl-long v4, v14, v12

    .line 4994
    .local v4, "dialog_id":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4995
    .local v8, "max_date":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND date <= ? AND read_state IN(0,2) AND out = 1"

    invoke-virtual {v12, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 4996
    .local v9, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4997
    const/4 v12, 0x1

    invoke-virtual {v9, v12, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4998
    const/4 v12, 0x2

    invoke-virtual {v9, v12, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4999
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5000
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e0} :catch_e1

    goto :goto_a0

    .line 5003
    .end local v4    # "dialog_id":J
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "max_date":I
    .end local v9    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_e1
    move-exception v3

    .line 5004
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5006
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e5
    return-void
.end method

.method private putChatsInternal(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3753
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3805
    :cond_8
    :goto_8
    return-void

    .line 3756
    :cond_9
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v9, "REPLACE INTO chats VALUES(?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 3757
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_cc

    .line 3758
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3759
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v8, :cond_85

    .line 3760
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT data FROM chats WHERE uid = %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3761
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 3763
    const/4 v8, 0x0

    :try_start_46
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 3764
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_82

    .line 3765
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 3766
    .local v6, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3767
    if-eqz v6, :cond_82

    .line 3768
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 3769
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 3770
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 3771
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 3772
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 3773
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 3774
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_b6

    .line 3775
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3776
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_81} :catch_c0

    .line 3781
    :goto_81
    move-object v1, v6

    .line 3788
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_82
    :goto_82
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3790
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_85
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3791
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v8

    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3792
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3793
    const/4 v8, 0x1

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3794
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v8, :cond_c5

    .line 3795
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 3796
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3800
    .end local v5    # "name":Ljava/lang/String;
    :goto_a8
    const/4 v8, 0x3

    invoke-virtual {v7, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3801
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3802
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3757
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 3778
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b6
    const/4 v8, 0x0

    :try_start_b7
    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3779
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v8, v8, -0x41

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bf} :catch_c0

    goto :goto_81

    .line 3784
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :catch_c0
    move-exception v4

    .line 3785
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_82

    .line 3798
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_c5
    const/4 v8, 0x2

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    goto :goto_a8

    .line 3804
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_cc
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_8
.end method

.method private putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .registers 33
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "check"    # Z

    .prologue
    .line 5954
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5955
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 5956
    .local v16, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_3d

    .line 5957
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5958
    .local v12, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5956
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 5961
    .end local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3f5

    .line 5962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 5963
    .local v17, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 5964
    .local v18, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v19

    .line 5965
    .local v19, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO dialog_settings VALUES(?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v20

    .line 5966
    .local v20, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .line 5967
    .local v21, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v22

    .line 5969
    .local v22, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v6, 0x0

    :goto_aa
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_3e3

    .line 5970
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5972
    .local v9, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v23, v26, v28

    if-nez v23, :cond_ef

    .line 5973
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_131

    .line 5974
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5981
    :cond_ef
    :goto_ef
    if-eqz p2, :cond_175

    .line 5982
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SELECT did FROM dialogs WHERE did = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 5983
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    .line 5984
    .local v11, "exists":Z
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5985
    if-eqz v11, :cond_175

    .line 5969
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "exists":Z
    :cond_12d
    :goto_12d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_aa

    .line 5975
    :cond_131
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_15b

    .line 5976
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_155} :catch_156

    goto :goto_ef

    .line 6073
    .end local v6    # "a":I
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_156
    move-exception v10

    .line 6074
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6076
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_15a
    return-void

    .line 5978
    .restart local v6    # "a":I
    .restart local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_15b
    :try_start_15b
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_ef

    .line 5989
    :cond_175
    const/4 v13, 0x0

    .line 5991
    .local v13, "messageDate":I
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5992
    .restart local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v12, :cond_2dd

    .line 5993
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5995
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_1a5

    .line 5996
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v12}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 5999
    :cond_1a5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6000
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v12}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 6001
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v12, v8}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6003
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    .line 6004
    .local v14, "messageId":J
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_1e0

    .line 6005
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v23, 0x20

    shl-long v26, v26, v23

    or-long v14, v14, v26

    .line 6008
    :cond_1e0
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6009
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6010
    const/16 v23, 0x2

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6011
    const/16 v23, 0x3

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6012
    const/16 v23, 0x4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6013
    const/16 v23, 0x5

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6014
    const/16 v23, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 6015
    const/16 v26, 0x7

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_3d8

    const/16 v23, 0x1

    :goto_23b
    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6016
    const/16 v23, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6017
    const/16 v26, 0x9

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-eqz v23, :cond_3dc

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v23, v0

    :goto_263
    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6018
    const/16 v23, 0xa

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6019
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6021
    invoke-static {v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v23

    if-eqz v23, :cond_2c7

    .line 6022
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6023
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6024
    const/16 v23, 0x2

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6025
    const/16 v23, 0x3

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6026
    const/16 v23, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6027
    const/16 v23, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 6028
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6030
    :cond_2c7
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 6032
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 6035
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "messageId":J
    :cond_2dd
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 6036
    .local v24, "topMessage":J
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_307

    .line 6037
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v23, 0x20

    shl-long v26, v26, v23

    or-long v24, v24, v26

    .line 6040
    :cond_307
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6041
    const/16 v23, 0x1

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6042
    const/16 v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6043
    const/16 v23, 0x3

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6044
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6045
    const/16 v23, 0x5

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6046
    const/16 v23, 0x6

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6047
    const/16 v23, 0x7

    const-wide/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6048
    const/16 v23, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6049
    const/16 v23, 0x9

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6050
    const/16 v23, 0xa

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6051
    const/16 v23, 0xb

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6052
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6054
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12d

    .line 6055
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6056
    const/16 v23, 0x1

    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6057
    const/16 v26, 0x2

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v23, v0

    if-eqz v23, :cond_3e0

    const/16 v23, 0x1

    :goto_3ca
    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6058
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_12d

    .line 6015
    .end local v24    # "topMessage":J
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v14    # "messageId":J
    :cond_3d8
    const/16 v23, 0x0

    goto/16 :goto_23b

    .line 6017
    :cond_3dc
    const/16 v23, 0x0

    goto/16 :goto_263

    .line 6057
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "messageId":J
    .restart local v24    # "topMessage":J
    :cond_3e0
    const/16 v23, 0x0

    goto :goto_3ca

    .line 6061
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v12    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v13    # "messageDate":I
    .end local v24    # "topMessage":J
    :cond_3e3
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6062
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6063
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6064
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6065
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6066
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6069
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v21    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v22    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3f5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 6070
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 6072
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_418} :catch_156

    goto/16 :goto_15a
.end method

.method private putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
    .registers 76
    .param p2, "withTransaction"    # Z
    .param p3, "doNotUpdateDialogDate"    # Z
    .param p4, "downloadMask"    # I
    .param p5, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZIZ)V"
        }
    .end annotation

    .prologue
    .line 4216
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz p5, :cond_ce

    .line 4217
    const/16 v62, 0x0

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4218
    .local v26, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-nez v62, :cond_3f

    .line 4219
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_80

    .line 4220
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4227
    :cond_3f
    :goto_3f
    const/16 v27, -0x1

    .line 4228
    .local v27, "lastMid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-virtual/range {v63 .. v65}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4229
    .local v11, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_7a

    .line 4230
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v27

    .line 4232
    :cond_7a
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4233
    if-eqz v27, :cond_ce

    .line 4617
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v27    # "lastMid":I
    :cond_7f
    :goto_7f
    return-void

    .line 4221
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_80
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_b0

    .line 4222
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_aa} :catch_ab

    goto :goto_3f

    .line 4614
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_ab
    move-exception v19

    .line 4615
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7f

    .line 4224
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b0
    :try_start_b0
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3f

    .line 4237
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_ce
    if-eqz p2, :cond_d9

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4240
    :cond_d9
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 4241
    .local v39, "messagesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 4242
    .local v37, "messagesCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 4243
    .local v30, "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4245
    .local v5, "botKeyboards":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/16 v40, 0x0

    .line 4246
    .local v40, "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v36, 0x0

    .line 4247
    .local v36, "messageMediaIds":Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .line 4248
    .local v31, "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4249
    .local v33, "messageIds":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 4250
    .local v15, "dialogsReadMax":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 4252
    .local v38, "messagesIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v52

    .line 4253
    .local v52, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/16 v53, 0x0

    .line 4254
    .local v53, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO randoms VALUES(?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v54

    .line 4255
    .local v54, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO download_queue VALUES(?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v55

    .line 4256
    .local v55, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v56

    .line 4258
    .local v56, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_132
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v62

    move/from16 v0, v62

    if-ge v4, v0, :cond_343

    .line 4259
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4261
    .local v32, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4262
    .local v34, "messageId":J
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-nez v62, :cond_17e

    .line 4263
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_2f1

    .line 4264
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4271
    :cond_17e
    :goto_17e
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_1a3

    .line 4272
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const/16 v64, 0x20

    shl-long v62, v62, v64

    or-long v34, v34, v62

    .line 4275
    :cond_1a3
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_253

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-nez v62, :cond_253

    .line 4276
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4277
    .local v10, "currentMaxId":Ljava/lang/Integer;
    if-nez v10, :cond_212

    .line 4278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "SELECT inbox_max FROM dialogs WHERE did = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-virtual/range {v63 .. v65}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4279
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_33b

    .line 4280
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 4284
    :goto_200
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4285
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4287
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_212
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-ltz v62, :cond_22a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_253

    .line 4288
    :cond_22a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_239

    .line 4289
    const-string v62, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    :cond_239
    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4292
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4295
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    :cond_253
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_2ac

    .line 4296
    if-nez v36, :cond_26a

    .line 4297
    new-instance v36, Ljava/lang/StringBuilder;

    .end local v36    # "messageMediaIds":Ljava/lang/StringBuilder;
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 4298
    .restart local v36    # "messageMediaIds":Ljava/lang/StringBuilder;
    new-instance v40, Ljava/util/HashMap;

    .end local v40    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 4299
    .restart local v40    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v31, Ljava/util/HashMap;

    .end local v31    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 4301
    .restart local v31    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_26a
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_279

    .line 4302
    const-string v62, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4304
    :cond_279
    move-object/from16 v0, v36

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4305
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4306
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v31

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4308
    :cond_2ac
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_2ed

    .line 4309
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4310
    .local v44, "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v44, :cond_2dc

    move-object/from16 v0, v44

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_2ed

    .line 4311
    :cond_2dc
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4258
    .end local v44    # "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2ed
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_132

    .line 4265
    :cond_2f1
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_31d

    .line 4266
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_17e

    .line 4268
    :cond_31d
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    neg-int v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_17e

    .line 4282
    .restart local v10    # "currentMaxId":Ljava/lang/Integer;
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_33b
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_200

    .line 4316
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    :cond_343
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :goto_34b
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_36f

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 4317
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Long;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_34b

    .line 4320
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_36f
    if-eqz v36, :cond_42b

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "SELECT mid FROM media_v2 WHERE mid IN("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4322
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_3a0
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_3ba

    .line 4323
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v42

    .line 4324
    .local v42, "mid":J
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a0

    .line 4326
    .end local v42    # "mid":J
    :cond_3ba
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4327
    new-instance v30, Ljava/util/HashMap;

    .end local v30    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 4328
    .restart local v30    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_3ca
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_42b

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 4329
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    .line 4330
    .local v57, "type":Ljava/lang/Integer;
    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 4332
    .local v8, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez v8, :cond_41e

    .line 4333
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4334
    .restart local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4335
    .local v7, "count":Ljava/lang/Integer;
    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4339
    :goto_402
    if-nez v7, :cond_40a

    .line 4340
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4342
    :cond_40a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4343
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3ca

    .line 4337
    .end local v7    # "count":Ljava/lang/Integer;
    :cond_41e
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .restart local v7    # "count":Ljava/lang/Integer;
    goto :goto_402

    .line 4347
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v57    # "type":Ljava/lang/Integer;
    :cond_42b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v62

    if-lez v62, :cond_4b1

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "SELECT mid FROM messages WHERE mid IN("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {v62 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4349
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_460
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_47a

    .line 4350
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_460

    .line 4352
    :cond_47a
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4353
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_485
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_4b1

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 4354
    .local v14, "dialog_id":Ljava/lang/Long;
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4355
    .restart local v7    # "count":Ljava/lang/Integer;
    if-nez v7, :cond_4a1

    .line 4356
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4358
    :cond_4a1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4359
    move-object/from16 v0, v37

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_485

    .line 4363
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v14    # "dialog_id":Ljava/lang/Long;
    :cond_4b1
    const/16 v17, 0x0

    .line 4364
    .local v17, "downloadMediaMask":I
    const/4 v4, 0x0

    :goto_4b4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v62

    move/from16 v0, v62

    if-ge v4, v0, :cond_96f

    .line 4365
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4366
    .restart local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 4368
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4369
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4370
    .restart local v34    # "messageId":J
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_4ec

    .line 4371
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4373
    :cond_4ec
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_511

    .line 4374
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const/16 v64, 0x20

    shl-long v62, v62, v64

    or-long v34, v34, v62

    .line 4377
    :cond_511
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v62

    move/from16 v0, v62

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4378
    .local v12, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4380
    const/16 v61, 0x1

    .line 4381
    .local v61, "updateDialog":Z
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    if-eqz v62, :cond_563

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v62, v0

    if-eqz v62, :cond_563

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v62, v0

    if-nez v62, :cond_563

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v62, v0

    if-nez v62, :cond_563

    .line 4382
    const/16 v61, 0x0

    .line 4385
    :cond_563
    if-eqz v61, :cond_5e4

    .line 4386
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4387
    .restart local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v26, :cond_5d1

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_5d1

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-lez v62, :cond_5af

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-lez v62, :cond_5af

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-gt v0, v1, :cond_5d1

    :cond_5af
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-gez v62, :cond_5e4

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    if-gez v62, :cond_5e4

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v62, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_5e4

    .line 4388
    :cond_5d1
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4392
    .end local v26    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5e4
    const/16 v62, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4393
    const/16 v62, 0x2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4394
    const/16 v62, 0x3

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4395
    const/16 v62, 0x4

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4396
    const/16 v62, 0x5

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4397
    const/16 v62, 0x6

    move-object/from16 v0, v52

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4398
    const/16 v63, 0x7

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_855

    const/16 v62, 0x1

    :goto_644
    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4399
    const/16 v62, 0x8

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4400
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v62, v0

    move/from16 v0, v62

    and-int/lit16 v0, v0, 0x400

    move/from16 v62, v0

    if-eqz v62, :cond_859

    .line 4401
    const/16 v62, 0x9

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v63, v0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4405
    :goto_67d
    const/16 v62, 0xa

    const/16 v63, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4406
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4408
    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v62, v62, v64

    if-eqz v62, :cond_6bb

    .line 4409
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4410
    const/16 v62, 0x1

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4411
    const/16 v62, 0x2

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4412
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4415
    :cond_6bb
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_71a

    .line 4416
    if-nez v53, :cond_6cf

    .line 4417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v53

    .line 4419
    :cond_6cf
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4420
    const/16 v62, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4421
    const/16 v62, 0x2

    move-object/from16 v0, v32

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4422
    const/16 v62, 0x3

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v53

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4423
    const/16 v62, 0x4

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v53

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4424
    const/16 v62, 0x5

    move-object/from16 v0, v53

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4425
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4428
    :cond_71a
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move/from16 v62, v0

    if-eqz v62, :cond_756

    .line 4429
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4430
    const/16 v62, 0x1

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v56

    move/from16 v1, v62

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4431
    const/16 v62, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v62

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4432
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4435
    :cond_756
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4437
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v62, v0

    if-eqz v62, :cond_76f

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v62, v0

    if-eqz v62, :cond_851

    :cond_76f
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v62, v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v63

    move/from16 v0, v63

    add-int/lit16 v0, v0, -0xe10

    move/from16 v63, v0

    move/from16 v0, v62

    move/from16 v1, v63

    if-lt v0, v1, :cond_851

    if-eqz p4, :cond_851

    .line 4438
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v62, v0

    if-nez v62, :cond_7a7

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v62, v0

    if-eqz v62, :cond_851

    .line 4439
    :cond_7a7
    const/16 v57, 0x0

    .line 4440
    .local v57, "type":I
    const-wide/16 v22, 0x0

    .line 4441
    .local v22, "id":J
    const/16 v41, 0x0

    .line 4442
    .local v41, "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_86e

    .line 4443
    and-int/lit8 v62, p4, 0x2

    if-eqz v62, :cond_804

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move/from16 v62, v0

    const/high16 v63, 0x500000

    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_804

    .line 4444
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4445
    const/16 v57, 0x2

    .line 4446
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4447
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v62, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4448
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4478
    :cond_804
    :goto_804
    if-eqz v41, :cond_851

    .line 4479
    or-int v17, v17, v57

    .line 4480
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4481
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v62

    move/from16 v0, v62

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4482
    .restart local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4483
    const/16 v62, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v62

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4484
    const/16 v62, 0x2

    move-object/from16 v0, v55

    move/from16 v1, v62

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4485
    const/16 v62, 0x3

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v55

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4486
    const/16 v62, 0x4

    move-object/from16 v0, v55

    move/from16 v1, v62

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4487
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4488
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4364
    .end local v22    # "id":J
    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v57    # "type":I
    :cond_851
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4b4

    .line 4398
    :cond_855
    const/16 v62, 0x0

    goto/16 :goto_644

    .line 4403
    :cond_859
    const/16 v62, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v63

    move-object/from16 v0, v52

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_67d

    .line 4450
    .restart local v22    # "id":J
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .restart local v57    # "type":I
    :cond_86e
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v62, v0

    if-eqz v62, :cond_8d1

    .line 4451
    and-int/lit8 v62, p4, 0x1

    if-eqz v62, :cond_804

    .line 4452
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v63

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v49

    .line 4453
    .local v49, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v49, :cond_804

    .line 4454
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-wide/from16 v22, v0

    .line 4455
    const/16 v57, 0x1

    .line 4456
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 4457
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v62, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4458
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto/16 :goto_804

    .line 4461
    .end local v49    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8d1
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-eqz v62, :cond_910

    .line 4462
    and-int/lit8 v62, p4, 0x4

    if-eqz v62, :cond_804

    .line 4463
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4464
    const/16 v57, 0x4

    .line 4465
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4466
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v62, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4467
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto/16 :goto_804

    .line 4469
    :cond_910
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v62, v0

    if-eqz v62, :cond_804

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v62

    if-nez v62, :cond_804

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v62

    if-nez v62, :cond_804

    .line 4470
    and-int/lit8 v62, p4, 0x8

    if-eqz v62, :cond_804

    .line 4471
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    .line 4472
    const/16 v57, 0x8

    .line 4473
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4474
    .restart local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v62, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4475
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto/16 :goto_804

    .line 4493
    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v22    # "id":J
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    .end local v41    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v57    # "type":I
    .end local v61    # "updateDialog":Z
    :cond_96f
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4494
    if-eqz v53, :cond_977

    .line 4495
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4497
    :cond_977
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4498
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4499
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v52

    .line 4502
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 4503
    .local v16, "dids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4505
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_9a0
    :goto_9a0
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_b60

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/Map$Entry;

    .line 4506
    .local v48, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 4507
    .local v25, "key":Ljava/lang/Long;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-eqz v63, :cond_9a0

    .line 4510
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4512
    .restart local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v6, 0x0

    .line 4513
    .local v6, "channelId":I
    if-eqz v32, :cond_9d3

    .line 4514
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 4517
    :cond_9d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "SELECT date, unread_count, pts, last_mid, inbox_max, outbox_max, pinned FROM dialogs WHERE did = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4518
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v13, 0x0

    .line 4519
    .local v13, "dialog_date":I
    const/16 v28, 0x0

    .line 4520
    .local v28, "last_mid":I
    const/16 v45, 0x0

    .line 4521
    .local v45, "old_unread_count":I
    if-eqz v6, :cond_b28

    const/16 v51, 0x1

    .line 4522
    .local v51, "pts":I
    :goto_a05
    const/16 v24, 0x0

    .line 4523
    .local v24, "inbox_max":I
    const/16 v46, 0x0

    .line 4524
    .local v46, "outbox_max":I
    const/16 v50, 0x0

    .line 4525
    .local v50, "pinned":I
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_b2c

    .line 4526
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 4527
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v45

    .line 4528
    const/16 v63, 0x2

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v51

    .line 4529
    const/16 v63, 0x3

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v28

    .line 4530
    const/16 v63, 0x4

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v24

    .line 4531
    const/16 v63, 0x5

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v46

    .line 4532
    const/16 v63, 0x6

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v50

    .line 4536
    :cond_a49
    :goto_a49
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4538
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Integer;

    .line 4539
    .local v60, "unread_count":Ljava/lang/Integer;
    if-nez v60, :cond_b39

    .line 4540
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 4544
    :goto_a5e
    if-eqz v32, :cond_b4e

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4545
    .restart local v34    # "messageId":J
    :goto_a6b
    if-eqz v32, :cond_a80

    .line 4546
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_a80

    .line 4547
    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 4551
    :cond_a80
    if-eqz v6, :cond_a8b

    .line 4552
    int-to-long v0, v6

    move-wide/from16 v64, v0

    const/16 v63, 0x20

    shl-long v64, v64, v63

    or-long v34, v34, v64

    .line 4555
    :cond_a8b
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4556
    const/16 v63, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4557
    if-eqz v32, :cond_b55

    if-eqz p3, :cond_aa3

    if-nez v13, :cond_b55

    .line 4558
    :cond_aa3
    const/16 v63, 0x2

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4562
    :goto_ab4
    const/16 v63, 0x3

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v64

    add-int v64, v64, v45

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4563
    const/16 v63, 0x4

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4564
    const/16 v63, 0x5

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4565
    const/16 v63, 0x6

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4566
    const/16 v63, 0x7

    const-wide/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4567
    const/16 v63, 0x8

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4568
    const/16 v63, 0x9

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4569
    const/16 v63, 0xa

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4570
    const/16 v63, 0xb

    move-object/from16 v0, v52

    move/from16 v1, v63

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4571
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_9a0

    .line 4521
    .end local v24    # "inbox_max":I
    .end local v34    # "messageId":J
    .end local v46    # "outbox_max":I
    .end local v50    # "pinned":I
    .end local v51    # "pts":I
    .end local v60    # "unread_count":Ljava/lang/Integer;
    :cond_b28
    const/16 v51, 0x0

    goto/16 :goto_a05

    .line 4533
    .restart local v24    # "inbox_max":I
    .restart local v46    # "outbox_max":I
    .restart local v50    # "pinned":I
    .restart local v51    # "pts":I
    :cond_b2c
    if-eqz v6, :cond_a49

    .line 4534
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    goto/16 :goto_a49

    .line 4542
    .restart local v60    # "unread_count":Ljava/lang/Integer;
    :cond_b39
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int v63, v63, v45

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a5e

    .line 4544
    :cond_b4e
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v34, v0

    goto/16 :goto_a6b

    .line 4560
    .restart local v34    # "messageId":J
    :cond_b55
    const/16 v63, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v63

    invoke-virtual {v0, v1, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_ab4

    .line 4573
    .end local v6    # "channelId":I
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "dialog_date":I
    .end local v24    # "inbox_max":I
    .end local v25    # "key":Ljava/lang/Long;
    .end local v28    # "last_mid":I
    .end local v32    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "messageId":J
    .end local v45    # "old_unread_count":I
    .end local v46    # "outbox_max":I
    .end local v48    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v50    # "pinned":I
    .end local v51    # "pts":I
    .end local v60    # "unread_count":Ljava/lang/Integer;
    :cond_b60
    invoke-virtual/range {v52 .. v52}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4575
    if-eqz v30, :cond_c3a

    .line 4576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    const-string v63, "REPLACE INTO media_counts_v2 VALUES(?, ?, ?)"

    invoke-virtual/range {v62 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v54

    .line 4577
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :cond_b79
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_c37

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4578
    .local v9, "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    .line 4579
    .local v57, "type":Ljava/lang/Integer;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/HashMap;

    invoke-virtual/range {v62 .. v62}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v64

    :cond_b99
    :goto_b99
    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_b79

    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 4580
    .local v47, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Long;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    .line 4581
    .local v58, "uid":J
    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v29, v0

    .line 4582
    .local v29, "lower_part":I
    const/4 v7, -0x1

    .line 4583
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    sget-object v65, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v66, "SELECT count FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x1

    aput-object v57, v67, v68

    invoke-static/range {v65 .. v67}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v65

    const/16 v66, 0x0

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4584
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v62

    if-eqz v62, :cond_bf7

    .line 4585
    const/16 v62, 0x0

    move/from16 v0, v62

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 4587
    :cond_bf7
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4588
    const/16 v62, -0x1

    move/from16 v0, v62

    if-eq v7, v0, :cond_b99

    .line 4589
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4590
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v62

    add-int v7, v7, v62

    .line 4591
    const/16 v62, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v62

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4592
    const/16 v62, 0x2

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v65

    move-object/from16 v0, v54

    move/from16 v1, v62

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4593
    const/16 v62, 0x3

    move-object/from16 v0, v54

    move/from16 v1, v62

    invoke-virtual {v0, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4594
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_b99

    .line 4598
    .end local v7    # "count":I
    .end local v9    # "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v29    # "lower_part":I
    .end local v47    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v57    # "type":Ljava/lang/Integer;
    .end local v58    # "uid":J
    :cond_c37
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4600
    :cond_c3a
    if-eqz p2, :cond_c45

    .line 4601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 4603
    :cond_c45
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 4605
    if-eqz v17, :cond_7f

    .line 4606
    move/from16 v18, v17

    .line 4607
    .local v18, "downloadMediaMaskFinal":I
    new-instance v62, Lorg/telegram/messenger/MessagesStorage$68;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage$68;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-static/range {v62 .. v62}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_c62
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c62} :catch_ab

    goto/16 :goto_7f
.end method

.method private putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 6
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3901
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p3, :cond_7

    .line 3902
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 3904
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 3905
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 3906
    if-eqz p3, :cond_14

    .line 3907
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    .line 3912
    :cond_14
    :goto_14
    return-void

    .line 3909
    :catch_15
    move-exception v0

    .line 3910
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private putUsersInternal(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3690
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3750
    :cond_8
    :goto_8
    return-void

    .line 3693
    :cond_9
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v8, "REPLACE INTO users VALUES(?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 3694
    .local v5, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_f7

    .line 3695
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 3696
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_7b

    .line 3697
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT data FROM users WHERE uid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3698
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 3700
    const/4 v7, 0x0

    :try_start_46
    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3701
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_78

    .line 3702
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 3703
    .local v4, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3704
    if-eqz v4, :cond_78

    .line 3705
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v7, :cond_be

    .line 3706
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3707
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 3712
    :goto_69
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_cd

    .line 3713
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3714
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_77} :catch_c8

    .line 3719
    :goto_77
    move-object v6, v4

    .line 3726
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_78
    :goto_78
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3728
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_7b
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3729
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$User;->getObjectSize()I

    move-result v7

    invoke-direct {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3730
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v2}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3731
    const/4 v7, 0x1

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3732
    const/4 v7, 0x2

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3733
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_f1

    .line 3734
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_d7

    .line 3735
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x64

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3741
    :cond_a8
    :goto_a8
    const/4 v7, 0x3

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3745
    :goto_b0
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3746
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3747
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3694
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 3709
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_be
    const/4 v7, 0x0

    :try_start_bf
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3710
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c7} :catch_c8

    goto :goto_69

    .line 3722
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_c8
    move-exception v3

    .line 3723
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_78

    .line 3716
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_cd
    const/4 v7, 0x0

    :try_start_ce
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3717
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d6} :catch_c8

    goto :goto_77

    .line 3736
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d7
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_e4

    .line 3737
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x65

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_a8

    .line 3738
    :cond_e4
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_a8

    .line 3739
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x66

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_a8

    .line 3743
    :cond_f1
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_b0

    .line 3749
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f7
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_8
.end method

.method private updateDbToLastVersion(I)V
    .registers 4
    .param p1, "currentVersion"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$1;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method

.method private updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 32
    .param p3, "channelId"    # I
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5167
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "additionalDialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-eqz v23, :cond_1e

    .line 5168
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "wrong db thread"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 5172
    :cond_1e
    :try_start_1e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5173
    .local v11, "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_113

    .line 5175
    if-eqz p3, :cond_8a

    .line 5176
    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v24, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ?)) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .line 5187
    .local v21, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5188
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_54
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_e8

    .line 5189
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 5190
    .local v12, "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5191
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5192
    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5193
    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5194
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5188
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 5179
    .end local v4    # "a":I
    .end local v12    # "did":J
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_8a
    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 5180
    .local v18, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "SELECT did FROM dialogs WHERE last_mid IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 5181
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_ba
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_d7

    .line 5182
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_d1} :catch_d2

    goto :goto_ba

    .line 5290
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "ids":Ljava/lang/String;
    :catch_d2
    move-exception v14

    .line 5291
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5293
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_d6
    :goto_d6
    return-void

    .line 5184
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v18    # "ids":Ljava/lang/String;
    :cond_d7
    :try_start_d7
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v24, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ? AND date != 0)) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .restart local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    goto/16 :goto_4a

    .line 5196
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v18    # "ids":Ljava/lang/String;
    .restart local v4    # "a":I
    :cond_e8
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 5201
    .end local v4    # "a":I
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_f4
    if-eqz p2, :cond_127

    .line 5202
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_f7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_127

    .line 5203
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 5204
    .local v12, "did":Ljava/lang/Long;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_110

    .line 5205
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5202
    :cond_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 5199
    .end local v4    # "a":I
    .end local v12    # "did":Ljava/lang/Long;
    :cond_113
    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f4

    .line 5209
    :cond_127
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 5211
    .restart local v18    # "ids":Ljava/lang/String;
    new-instance v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    .line 5212
    .local v10, "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5213
    .local v15, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 5214
    .local v22, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5215
    .local v5, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5216
    .local v16, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date, d.pts, d.inbox_max, d.outbox_max, d.pinned FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid WHERE d.did IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 5217
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_16e
    :goto_16e
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_2f8

    .line 5218
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 5219
    .local v9, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5220
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 5221
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 5222
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 5223
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 5224
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5225
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 5226
    if-nez p3, :cond_29f

    const/16 v23, 0x0

    :goto_1d1
    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 5227
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5228
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v23, v0

    if-eqz v23, :cond_2a3

    const/16 v23, 0x1

    :goto_1e9
    move/from16 v0, v23

    iput-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5230
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5232
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    .line 5233
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v7, :cond_268

    .line 5234
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v20

    .line 5235
    .local v20, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5236
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 5237
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5238
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 5239
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 5240
    .local v8, "date":I
    if-eqz v8, :cond_24c

    .line 5241
    iput v8, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5243
    :cond_24c
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5244
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5246
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5249
    .end local v8    # "date":I
    .end local v20    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_268
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 5250
    .local v19, "lower_id":I
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shr-long v24, v24, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v17, v0

    .line 5251
    .local v17, "high_id":I
    if-eqz v19, :cond_2dd

    .line 5252
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a7

    .line 5253
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16e

    .line 5254
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16e

    .line 5226
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v17    # "high_id":I
    .end local v19    # "lower_id":I
    :cond_29f
    const/16 v23, 0x1

    goto/16 :goto_1d1

    .line 5228
    :cond_2a3
    const/16 v23, 0x0

    goto/16 :goto_1e9

    .line 5257
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v17    # "high_id":I
    .restart local v19    # "lower_id":I
    :cond_2a7
    if-lez v19, :cond_2bc

    .line 5258
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16e

    .line 5259
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16e

    .line 5262
    :cond_2bc
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16e

    .line 5263
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16e

    .line 5268
    :cond_2dd
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16e

    .line 5269
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16e

    .line 5273
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "high_id":I
    .end local v19    # "lower_id":I
    :cond_2f8
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5275
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_314

    .line 5276
    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5279
    :cond_314
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_32f

    .line 5280
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5283
    :cond_32f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_34c

    .line 5284
    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5287
    :cond_34c
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_35c

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_d6

    .line 5288
    :cond_35c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v15}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_365} :catch_d2

    goto/16 :goto_d6
.end method

.method private updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1724
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1726
    .local v8, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_fd

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_fd

    .line 1727
    const-string v20, ","

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    .line 1728
    .local v11, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v22, "SELECT uid, read_state, out FROM messages WHERE mid IN(%s)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1729
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3d
    :goto_3d
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v20

    if-eqz v20, :cond_9a

    .line 1730
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 1731
    .local v13, "out":I
    if-nez v13, :cond_3d

    .line 1734
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 1735
    .local v16, "read_state":I
    if-nez v16, :cond_3d

    .line 1738
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 1739
    .local v18, "uid":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1740
    .local v6, "currentCount":Ljava/lang/Integer;
    if-nez v6, :cond_84

    .line 1741
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_3d

    .line 1799
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "ids":Ljava/lang/String;
    .end local v13    # "out":I
    .end local v16    # "read_state":I
    .end local v18    # "uid":J
    :catch_7f
    move-exception v9

    .line 1800
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1802
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    return-void

    .line 1743
    .restart local v6    # "currentCount":Ljava/lang/Integer;
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v11    # "ids":Ljava/lang/String;
    .restart local v13    # "out":I
    .restart local v16    # "read_state":I
    .restart local v18    # "uid":J
    :cond_84
    :try_start_84
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 1746
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v13    # "out":I
    .end local v16    # "read_state":I
    .end local v18    # "uid":J
    :cond_9a
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1783
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "ids":Ljava/lang/String;
    :cond_9d
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_229

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string v21, "UPDATE dialogs SET unread_count = ? WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1786
    .local v17, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_c0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_21d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1787
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1788
    const/16 v22, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1789
    const/16 v22, 0x2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1790
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_c0

    .line 1748
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_fd
    if-eqz p2, :cond_1b8

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-eqz v20, :cond_1b8

    .line 1749
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_1b8

    .line 1750
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1751
    .local v12, "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1752
    .local v14, "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v22, "SELECT COUNT(mid) FROM messages WHERE uid = %d AND mid > %d AND read_state IN(0,2) AND out = 0"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1753
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v20

    if-eqz v20, :cond_172

    .line 1754
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 1755
    .local v5, "count":I
    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .end local v5    # "count":I
    :cond_172
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string v21, "UPDATE dialogs SET inbox_max = max((SELECT inbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1760
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1761
    const/16 v20, 0x1

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1762
    const/16 v20, 0x2

    long-to-int v0, v14

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1763
    const/16 v20, 0x3

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1764
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1765
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1749
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_106

    .line 1768
    .end local v4    # "b":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v12    # "key":I
    .end local v14    # "messageId":J
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1b8
    if-eqz p3, :cond_9d

    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-eqz v20, :cond_9d

    .line 1769
    const/4 v4, 0x0

    .restart local v4    # "b":I
    :goto_1c1
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_9d

    .line 1770
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1771
    .restart local v12    # "key":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1772
    .restart local v14    # "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string v21, "UPDATE dialogs SET outbox_max = max((SELECT outbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 1773
    .restart local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1774
    const/16 v20, 0x1

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1775
    const/16 v20, 0x2

    long-to-int v0, v14

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1776
    const/16 v20, 0x3

    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1777
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1778
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1769
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c1

    .line 1792
    .end local v4    # "b":I
    .end local v12    # "key":I
    .end local v14    # "messageId":J
    :cond_21d
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1796
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_229
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_83

    .line 1797
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_238} :catch_7f

    goto/16 :goto_83
.end method

.method private updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J
    .registers 26
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "channelId"    # I

    .prologue
    .line 4761
    const/4 v2, 0x0

    .line 4763
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    move/from16 v0, p4

    int-to-long v8, v0

    .line 4765
    .local v8, "newMessageId":J
    if-nez p3, :cond_4d

    .line 4767
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "SELECT mid FROM randoms WHERE random_id = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4768
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_33

    .line 4769
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_3c
    .catchall {:try_start_6 .. :try_end_32} :catchall_46

    move-result-object p3

    .line 4774
    :cond_33
    if-eqz v2, :cond_38

    .line 4775
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4778
    :cond_38
    :goto_38
    if-nez p3, :cond_4d

    .line 4779
    const/4 v12, 0x0

    .line 4873
    :goto_3b
    return-object v12

    .line 4771
    :catch_3c
    move-exception v3

    .line 4772
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_46

    .line 4774
    if-eqz v2, :cond_38

    .line 4775
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_38

    .line 4774
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_46
    move-exception v12

    if-eqz v2, :cond_4c

    .line 4775
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_4c
    throw v12

    .line 4782
    :cond_4d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v10, v12

    .line 4783
    .local v10, "oldMessageId":J
    if-eqz p6, :cond_62

    .line 4784
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 4785
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 4788
    :cond_62
    const-wide/16 v4, 0x0

    .line 4790
    .local v4, "did":J
    :try_start_64
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "SELECT uid FROM messages WHERE mid = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4791
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 4792
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8c} :catch_9a
    .catchall {:try_start_64 .. :try_end_8c} :catchall_a4

    move-result-wide v4

    .line 4797
    :cond_8d
    if-eqz v2, :cond_92

    .line 4798
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4802
    :cond_92
    :goto_92
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_ab

    .line 4803
    const/4 v12, 0x0

    goto :goto_3b

    .line 4794
    :catch_9a
    move-exception v3

    .line 4795
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9b
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a4

    .line 4797
    if-eqz v2, :cond_92

    .line 4798
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_92

    .line 4797
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_a4
    move-exception v12

    if-eqz v2, :cond_aa

    .line 4798
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_aa
    throw v12

    .line 4805
    :cond_ab
    cmp-long v12, v10, v8

    if-nez v12, :cond_ed

    if-eqz p5, :cond_ed

    .line 4806
    const/4 v7, 0x0

    .line 4808
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_b2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v13, "UPDATE messages SET send_state = 0, date = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4809
    const/4 v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4810
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4811
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c9} :catch_dc
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_e6

    .line 4815
    if-eqz v7, :cond_ce

    .line 4816
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4820
    :cond_ce
    :goto_ce
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    move/from16 v0, p4

    int-to-long v14, v0

    aput-wide v14, v12, v13

    goto/16 :goto_3b

    .line 4812
    :catch_dc
    move-exception v3

    .line 4813
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_dd
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e6

    .line 4815
    if-eqz v7, :cond_ce

    .line 4816
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_ce

    .line 4815
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_e6
    move-exception v12

    if-eqz v7, :cond_ec

    .line 4816
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_ec
    throw v12

    .line 4822
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_ed
    const/4 v7, 0x0

    .line 4824
    .restart local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v13, "UPDATE messages SET mid = ?, send_state = 0 WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4825
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4826
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4827
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_103} :catch_14e
    .catchall {:try_start_ee .. :try_end_103} :catchall_1a0

    .line 4836
    if-eqz v7, :cond_109

    .line 4837
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4838
    const/4 v7, 0x0

    .line 4843
    :cond_109
    :goto_109
    :try_start_109
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v13, "UPDATE media_v2 SET mid = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4844
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4845
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4846
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_11e} :catch_1a8
    .catchall {:try_start_109 .. :try_end_11e} :catchall_1d8

    .line 4854
    if-eqz v7, :cond_124

    .line 4855
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4856
    const/4 v7, 0x0

    .line 4861
    :cond_124
    :goto_124
    :try_start_124
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v13, "UPDATE dialogs SET last_mid = ? WHERE last_mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4862
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4863
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4864
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_139} :catch_1e0
    .catchall {:try_start_124 .. :try_end_139} :catchall_1eb

    .line 4868
    if-eqz v7, :cond_13e

    .line 4869
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4873
    :cond_13e
    :goto_13e
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v12, v13

    goto/16 :goto_3b

    .line 4828
    :catch_14e
    move-exception v3

    .line 4830
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "DELETE FROM messages WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4831
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "DELETE FROM messages_seq WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_193} :catch_19b
    .catchall {:try_start_14f .. :try_end_193} :catchall_1a0

    .line 4836
    :goto_193
    if-eqz v7, :cond_109

    .line 4837
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4838
    const/4 v7, 0x0

    goto/16 :goto_109

    .line 4832
    :catch_19b
    move-exception v6

    .line 4833
    .local v6, "e2":Ljava/lang/Exception;
    :try_start_19c
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1a0

    goto :goto_193

    .line 4836
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_1a0
    move-exception v12

    if-eqz v7, :cond_1a7

    .line 4837
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4838
    const/4 v7, 0x0

    :cond_1a7
    throw v12

    .line 4847
    :catch_1a8
    move-exception v3

    .line 4849
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_1a9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "DELETE FROM media_v2 WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1cb} :catch_1d3
    .catchall {:try_start_1a9 .. :try_end_1cb} :catchall_1d8

    .line 4854
    :goto_1cb
    if-eqz v7, :cond_124

    .line 4855
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4856
    const/4 v7, 0x0

    goto/16 :goto_124

    .line 4850
    :catch_1d3
    move-exception v6

    .line 4851
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_1d4
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1d7
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_1d8

    goto :goto_1cb

    .line 4854
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_1d8
    move-exception v12

    if-eqz v7, :cond_1df

    .line 4855
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4856
    const/4 v7, 0x0

    :cond_1df
    throw v12

    .line 4865
    :catch_1e0
    move-exception v3

    .line 4866
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_1e1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1eb

    .line 4868
    if-eqz v7, :cond_13e

    .line 4869
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_13e

    .line 4868
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1eb
    move-exception v12

    if-eqz v7, :cond_1f1

    .line 4869
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1f1
    throw v12
.end method

.method private updateUsersInternal(Ljava/util/ArrayList;ZZ)V
    .registers 16
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 4892
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v7}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1a

    .line 4893
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "wrong db thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4896
    :cond_1a
    if-eqz p2, :cond_6a

    .line 4897
    if-eqz p3, :cond_23

    .line 4898
    :try_start_1e
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4900
    :cond_23
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v8, "UPDATE users SET status = ? WHERE uid = ?"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 4901
    .local v3, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 4902
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4903
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_59

    .line 4904
    const/4 v8, 0x1

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4908
    :goto_4a
    const/4 v8, 0x2

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4909
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_53} :catch_54

    goto :goto_2f

    .line 4954
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_54
    move-exception v0

    .line 4955
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4957
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_58
    :goto_58
    return-void

    .line 4906
    .restart local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_59
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_5b
    invoke-virtual {v3, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_4a

    .line 4911
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5f
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4912
    if-eqz p3, :cond_58

    .line 4913
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto :goto_58

    .line 4916
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4917
    .local v1, "ids":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4918
    .local v6, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 4919
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_8f

    .line 4920
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4922
    :cond_8f
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4923
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 4925
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4926
    .local v2, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4927
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_ae
    :goto_ae
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 4928
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 4929
    .local v4, "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_ae

    .line 4930
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_e3

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v8, :cond_e3

    .line 4931
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_de

    .line 4932
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4933
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 4935
    :cond_de
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_ae

    .line 4936
    :cond_e3
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_ec

    .line 4937
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    goto :goto_ae

    .line 4938
    :cond_ec
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v8, :cond_ae

    .line 4939
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_ae

    .line 4944
    .end local v4    # "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_58

    .line 4945
    if-eqz p3, :cond_102

    .line 4946
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4948
    :cond_102
    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 4949
    if-eqz p3, :cond_58

    .line 4950
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_10c} :catch_54

    goto/16 :goto_58
.end method


# virtual methods
.method public addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 6
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;
    .param p3, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1128
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    if-nez p3, :cond_13

    .line 1158
    :cond_12
    :goto_12
    return-void

    .line 1131
    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$14;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_12
.end method

.method public applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "adds"    # Ljava/lang/String;
    .param p2, "deletes"    # Ljava/lang/String;

    .prologue
    .line 2396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 2414
    :goto_c
    return-void

    .line 2399
    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$42;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$42;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public checkMessageId(JI)Z
    .registers 15
    .param p1, "dialog_id"    # J
    .param p3, "mid"    # I

    .prologue
    const/4 v9, 0x0

    .line 2648
    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2649
    .local v5, "result":[Z
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2650
    .local v6, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$47;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$47;-><init>(Lorg/telegram/messenger/MessagesStorage;JI[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2670
    :try_start_16
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1c

    .line 2674
    :goto_19
    aget-boolean v0, v5, v9

    return v0

    .line 2671
    :catch_1c
    move-exception v7

    .line 2672
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public cleanup(Z)V
    .registers 4
    .param p1, "isLogin"    # Z

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 566
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$2;-><init>(Lorg/telegram/messenger/MessagesStorage;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 581
    return-void
.end method

.method public clearDownloadQueue(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 3956
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$63;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3970
    return-void
.end method

.method public clearUserPhoto(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # J

    .prologue
    .line 1576
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$25;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1586
    return-void
.end method

.method public clearUserPhotos(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1563
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$24;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1573
    return-void
.end method

.method public clearWebRecent(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$15;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1171
    return-void
.end method

.method public closeHolesInMedia(JIII)V
    .registers 25
    .param p1, "did"    # J
    .param p3, "minId"    # I
    .param p4, "maxId"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5415
    const/4 v9, 0x0

    .line 5417
    .local v9, "ok":Z
    if-gez p5, :cond_94

    .line 5418
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type >= 0 AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 5422
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_62
    const/4 v8, 0x0

    .line 5423
    .local v8, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_63
    :goto_63
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 5424
    if-nez v8, :cond_70

    .line 5425
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5427
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_70
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 5428
    .local v7, "holeType":I
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 5429
    .local v10, "start":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5430
    .local v5, "end":I
    if-ne v10, v5, :cond_84

    const/4 v12, 0x1

    if-eq v10, v12, :cond_63

    .line 5433
    :cond_84
    new-instance v12, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v10, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8e} :catch_8f

    goto :goto_63

    .line 5476
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holeType":I
    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v10    # "start":I
    :catch_8f
    move-exception v4

    .line 5477
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5479
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_93
    return-void

    .line 5420
    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_62

    .line 5435
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_fd
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5436
    if-eqz v8, :cond_93

    .line 5437
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_103
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_93

    .line 5438
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5439
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_168

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_168

    .line 5440
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5437
    :cond_165
    :goto_165
    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    .line 5441
    :cond_168
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_1ca

    .line 5442
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_172} :catch_8f

    move/from16 v0, p3

    if-eq v12, v0, :cond_165

    .line 5444
    :try_start_176
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "UPDATE media_holes_v2 SET end = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_1c4} :catch_1c5

    goto :goto_165

    .line 5445
    :catch_1c5
    move-exception v4

    .line 5446
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_1c6
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_165

    .line 5449
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1ca
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_22e

    .line 5450
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d4} :catch_8f

    move/from16 v0, p4

    if-eq v12, v0, :cond_165

    .line 5452
    :try_start_1d8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "UPDATE media_holes_v2 SET start = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_226} :catch_228

    goto/16 :goto_165

    .line 5453
    :catch_228
    move-exception v4

    .line 5454
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_229
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_165

    .line 5458
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_22e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5459
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v13, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 5460
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5461
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5462
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5463
    const/4 v12, 0x3

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5464
    const/4 v12, 0x4

    move/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5465
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5466
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5467
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5468
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5469
    const/4 v12, 0x3

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5470
    const/4 v12, 0x4

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5471
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5472
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_2bd} :catch_8f

    goto/16 :goto_165
.end method

.method public commitTransaction(Z)V
    .registers 5
    .param p1, "useQueue"    # Z

    .prologue
    .line 3265
    if-eqz p1, :cond_d

    .line 3266
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$50;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$50;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3283
    :goto_c
    return-void

    .line 3278
    :cond_d
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_c

    .line 3279
    :catch_13
    move-exception v0

    .line 3280
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    .registers 8
    .param p1, "data"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 663
    if-nez p1, :cond_5

    .line 664
    const-wide/16 v0, 0x0

    .line 683
    :goto_4
    return-wide v0

    .line 666
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 667
    .local v0, "id":J
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage$5;-><init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public createTaskForSecretChat(IIIILjava/util/ArrayList;)V
    .registers 14
    .param p1, "chat_id"    # I
    .param p2, "time"    # I
    .param p3, "readTime"    # I
    .param p4, "isOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1648
    .local p5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$28;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$28;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1720
    return-void
.end method

.method public deleteBlockedUser(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$19;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1295
    return-void
.end method

.method public deleteContacts(Ljava/util/ArrayList;)V
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
    .line 2379
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2393
    :cond_8
    :goto_8
    return-void

    .line 2382
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$41;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public deleteDialog(JI)V
    .registers 7
    .param p1, "did"    # J
    .param p3, "messagesOnly"    # I

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$22;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1522
    return-void
.end method

.method public deleteUserChannelHistory(II)V
    .registers 5
    .param p1, "channelId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$21;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1387
    return-void
.end method

.method public doneHolesInMedia(JII)V
    .registers 14
    .param p1, "did"    # J
    .param p3, "max_id"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5362
    const/4 v2, -0x1

    if-ne p4, v2, :cond_6f

    .line 5363
    if-nez p3, :cond_4b

    .line 5364
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM media_holes_v2 WHERE uid = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5368
    :goto_24
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 5369
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2d
    const/4 v2, 0x5

    if-ge v0, v2, :cond_6b

    .line 5370
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5371
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5372
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5373
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5374
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5375
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5369
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 5366
    .end local v0    # "a":I
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_4b
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND start = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_24

    .line 5377
    .restart local v0    # "a":I
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6b
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5393
    .end local v0    # "a":I
    :goto_6e
    return-void

    .line 5379
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6f
    if-nez p3, :cond_bb

    .line 5380
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5384
    :goto_97
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 5385
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5386
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5387
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5388
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5389
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5390
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5391
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_6e

    .line 5382
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_bb
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = 0"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_97
.end method

.method public getBlockedUsers()V
    .registers 3

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$18;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1282
    return-void
.end method

.method public getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requestDelegate"    # Lorg/telegram/tgnet/RequestDelegate;

    .prologue
    .line 1932
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1968
    :cond_4
    :goto_4
    return-void

    .line 1935
    :cond_5
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1936
    .local v0, "currentDate":I
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$33;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$33;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public getCachedPhoneBook()V
    .registers 3

    .prologue
    .line 2454
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$44;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$44;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2500
    return-void
.end method

.method public getChannelPtsSync(I)I
    .registers 8
    .param p1, "channelId"    # I

    .prologue
    const/4 v5, 0x0

    .line 6220
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6221
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 6222
    .local v1, "pts":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$85;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$85;-><init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6248
    :try_start_1f
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_29

    .line 6252
    :goto_22
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 6249
    :catch_29
    move-exception v0

    .line 6250
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 8
    .param p1, "chat_id"    # I

    .prologue
    .line 6317
    const/4 v1, 0x0

    .line 6319
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6320
    .local v2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6321
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 6322
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v1, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 6327
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_2b
    :goto_2b
    return-object v1

    .line 6324
    :catch_2c
    move-exception v3

    .line 6325
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 8
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 6274
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6275
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v0, v3, [Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6276
    .local v0, "chat":[Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$87;

    invoke-direct {v4, p0, v0, p1, v2}, Lorg/telegram/messenger/MessagesStorage$87;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6284
    :try_start_19
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 6288
    :goto_1c
    aget-object v3, v0, v5

    return-object v3

    .line 6285
    :catch_1f
    move-exception v1

    .line 6286
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v8, 0x0

    .line 3833
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    if-nez p2, :cond_c

    .line 3852
    :cond_b
    :goto_b
    return-void

    .line 3836
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT data FROM chats WHERE uid IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3837
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_21
    :goto_21
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3839
    const/4 v4, 0x0

    :try_start_28
    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3840
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_21

    .line 3841
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3842
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3843
    if-eqz v0, :cond_21

    .line 3844
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_41

    goto :goto_21

    .line 3847
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_41
    move-exception v3

    .line 3848
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 3851
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_46
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_b
.end method

.method public getContacts()V
    .registers 3

    .prologue
    .line 2503
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$45;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$45;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2535
    return-void
.end method

.method public getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method public getDialogPhotos(IIIJI)V
    .registers 17
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "classGuid"    # I

    .prologue
    .line 1525
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$23;

    move-object v1, p0

    move-wide v2, p4

    move v4, p1

    move v5, p3

    move v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$23;-><init>(Lorg/telegram/messenger/MessagesStorage;JIIII)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1560
    return-void
.end method

.method public getDialogReadMax(ZJ)I
    .registers 14
    .param p1, "outbox"    # Z
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v9, 0x0

    .line 6186
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6187
    .local v7, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    .line 6188
    .local v6, "max":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$84;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage$84;-><init>(Lorg/telegram/messenger/MessagesStorage;ZJ[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6212
    :try_start_22
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_2c

    .line 6216
    :goto_25
    aget-object v1, v6, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 6213
    :catch_2c
    move-exception v0

    .line 6214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public getDialogs(II)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 5778
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$80;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$80;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5933
    return-void
.end method

.method public getDownloadQueue(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 3973
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$64;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$64;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4008
    return-void
.end method

.method public getEncryptedChat(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .registers 8
    .param p1, "chat_id"    # I

    .prologue
    .line 6331
    const/4 v1, 0x0

    .line 6333
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6334
    .local v3, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6335
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 6336
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object v1, v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 6341
    .end local v3    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :cond_2c
    :goto_2c
    return-object v1

    .line 6338
    :catch_2d
    move-exception v2

    .line 6339
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3564
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 3589
    :cond_4
    :goto_4
    return-void

    .line 3567
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$59;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$59;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .local p3, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3855
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    if-nez p2, :cond_d

    .line 3897
    :cond_c
    :goto_c
    return-void

    .line 3858
    :cond_d
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "SELECT data, user, g, authkey, ttl, layer, seq_in, seq_out, use_count, exchange_id, key_date, fprint, fauthkey, khash, in_seq_no, admin_id FROM enc_chats WHERE uid IN(%s)"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3859
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_21
    :goto_21
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 3861
    const/4 v6, 0x0

    :try_start_28
    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 3862
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_21

    .line 3863
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 3864
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3865
    if-eqz v1, :cond_21

    .line 3866
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 3867
    if-eqz p3, :cond_5b

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 3868
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3870
    :cond_5b
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 3871
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 3872
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 3873
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 3874
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 3875
    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 3876
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 3877
    .local v5, "use_count":I
    shr-int/lit8 v6, v5, 0x10

    int-to-short v6, v6

    iput-short v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 3878
    int-to-short v6, v5

    iput-short v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 3879
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 3880
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 3881
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 3882
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 3883
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3884
    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 3885
    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    .line 3886
    .local v0, "admin_id":I
    if-eqz v0, :cond_cd

    .line 3887
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    .line 3889
    :cond_cd
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_d0} :catch_d2

    goto/16 :goto_21

    .line 3892
    .end local v0    # "admin_id":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v5    # "use_count":I
    :catch_d2
    move-exception v4

    .line 3893
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 3896
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d8
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_c
.end method

.method public getMessages(JIIIIIIZI)V
    .registers 24
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "minDate"    # I
    .param p7, "classGuid"    # I
    .param p8, "load_type"    # I
    .param p9, "isChannel"    # Z
    .param p10, "loadIndex"    # I

    .prologue
    .line 2678
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$48;

    move-object v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move-wide v6, p1

    move/from16 v8, p8

    move/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p7

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MessagesStorage$48;-><init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIIII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3241
    return-void
.end method

.method public getNewTask(Ljava/util/ArrayList;)V
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
    .line 1619
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$27;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1645
    return-void
.end method

.method public getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 3286
    if-eqz p1, :cond_c

    const-string v0, "attheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-object v0, v7

    .line 3324
    :goto_d
    return-object v0

    .line 3289
    :cond_e
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3290
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$51;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$51;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3320
    :try_start_25
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_35

    .line 3324
    :goto_28
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_d

    .line 3321
    :catch_35
    move-exception v6

    .line 3322
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3a
    move-object v0, v7

    .line 3324
    goto :goto_d
.end method

.method public getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getUnsentMessages(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 2538
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$46;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$46;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2645
    return-void
.end method

.method public getUser(I)Lorg/telegram/tgnet/TLRPC$User;
    .registers 8
    .param p1, "user_id"    # I

    .prologue
    .line 6292
    const/4 v2, 0x0

    .line 6294
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6295
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6296
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 6297
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v2, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 6302
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2b
    :goto_2b
    return-object v2

    .line 6299
    :catch_2c
    move-exception v1

    .line 6300
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;
    .registers 8
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 6256
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6257
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v2, v3, [Lorg/telegram/tgnet/TLRPC$User;

    .line 6258
    .local v2, "user":[Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$86;

    invoke-direct {v4, p0, v2, p1, v1}, Lorg/telegram/messenger/MessagesStorage$86;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$User;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6266
    :try_start_19
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 6270
    :goto_1c
    aget-object v3, v2, v5

    return-object v3

    .line 6267
    :catch_1f
    move-exception v0

    .line 6268
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6306
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6308
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_5
    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 6313
    :goto_e
    return-object v1

    .line 6309
    :catch_f
    move-exception v0

    .line 6310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6311
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "usersToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3808
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    if-nez p2, :cond_d

    .line 3830
    :cond_c
    :goto_c
    return-void

    .line 3811
    :cond_d
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT data, status FROM users WHERE uid IN(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3812
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_21
    :goto_21
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3814
    const/4 v4, 0x0

    :try_start_28
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 3815
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_21

    .line 3816
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 3817
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3818
    if-eqz v3, :cond_21

    .line 3819
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_4a

    .line 3820
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3822
    :cond_4a
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4d} :catch_4e

    goto :goto_21

    .line 3825
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_4e
    move-exception v2

    .line 3826
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 3829
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_53
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_c
.end method

.method public getWallpapers()V
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$17;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$17;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1251
    return-void
.end method

.method public hasAuthMessage(I)Z
    .registers 8
    .param p1, "date"    # I

    .prologue
    const/4 v5, 0x0

    .line 3539
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3540
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 3541
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$58;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$58;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3556
    :try_start_13
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_19

    .line 3560
    :goto_16
    aget-boolean v3, v1, v5

    return v3

    .line 3557
    :catch_19
    move-exception v0

    .line 3558
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public isDialogHasMessages(J)Z
    .registers 12
    .param p1, "did"    # J

    .prologue
    const/4 v8, 0x0

    .line 3514
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3515
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 3516
    .local v4, "result":[Z
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$57;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$57;-><init>(Lorg/telegram/messenger/MessagesStorage;J[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3531
    :try_start_15
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1b

    .line 3535
    :goto_18
    aget-boolean v0, v4, v8

    return v0

    .line 3532
    :catch_1b
    move-exception v6

    .line 3533
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public isMigratedChat(I)Z
    .registers 8
    .param p1, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 2165
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2166
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 2167
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$37;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$37;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2196
    :try_start_13
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_19

    .line 2200
    :goto_16
    aget-boolean v3, v1, v5

    return v3

    .line 2197
    :catch_19
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    .registers 12
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z
    .param p4, "byChannelUsers"    # Z

    .prologue
    .line 2204
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$38;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$38;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2297
    return-void
.end method

.method public loadUnreadMessages()V
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$11;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1056
    return-void
.end method

.method public loadWebRecent(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$13;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1125
    return-void
.end method

.method public markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 4
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4671
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$70;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$70;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4685
    return-void
.end method

.method public markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .registers 7
    .param p2, "useQueue"    # Z
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 5312
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5325
    :goto_7
    return-object v0

    .line 5315
    :cond_8
    if-eqz p2, :cond_15

    .line 5316
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$78;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage$78;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 5323
    :cond_15
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7
.end method

.method public markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5038
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5068
    :goto_6
    return-void

    .line 5041
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$76;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$76;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V
    .registers 7
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 5025
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_d

    .line 5026
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$75;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$75;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5035
    :goto_c
    return-void

    .line 5033
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    goto :goto_c
.end method

.method public markMessagesContentAsRead(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5009
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5022
    :cond_8
    :goto_8
    return-void

    .line 5012
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$74;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$74;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public openDatabase(Z)V
    .registers 12
    .param p1, "first"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    const-string v7, "cache4.db"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "createTable":Z
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_19

    .line 95
    const/4 v0, 0x1

    .line 98
    :cond_19
    :try_start_19
    new-instance v5, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 99
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "PRAGMA secure_delete = ON"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 100
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "PRAGMA temp_store = 1"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 101
    if-eqz v0, :cond_421

    .line 102
    const-string v5, "create new database"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 104
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 106
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 107
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 109
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE messages(mid INTEGER PRIMARY KEY, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 110
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS uid_mid_idx_messages ON messages(uid, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 111
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 112
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 113
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 114
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS send_state_idx_messages ON messages(mid, send_state, date) WHERE mid < 0 AND send_state = 1;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 116
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 117
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 119
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 120
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 122
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE dialogs(did INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, last_mid INTEGER, inbox_max INTEGER, outbox_max INTEGER, last_mid_i INTEGER, unread_count_i INTEGER, pts INTEGER, date_i INTEGER, pinned INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 123
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS date_idx_dialogs ON dialogs(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 124
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON dialogs(last_mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 125
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 126
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 127
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 129
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE randoms(random_id INTEGER, mid INTEGER, PRIMARY KEY (random_id, mid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 130
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 132
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 133
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 135
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 136
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 138
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 139
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 141
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 142
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 144
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 145
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 147
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 148
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 150
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE chat_pinned(uid INTEGER PRIMARY KEY, pinned INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 151
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS chat_pinned_mid_idx ON chat_pinned(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 153
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 154
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 156
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 157
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 159
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 160
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE users(uid INTEGER PRIMARY KEY, name TEXT, status INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 161
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE chats(uid INTEGER PRIMARY KEY, name TEXT, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 162
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE enc_chats(uid INTEGER PRIMARY KEY, user INTEGER, name TEXT, data BLOB, g BLOB, authkey BLOB, ttl INTEGER, layer INTEGER, seq_in INTEGER, seq_out INTEGER, use_count INTEGER, exchange_id INTEGER, key_date INTEGER, fprint INTEGER, fauthkey BLOB, khash BLOB, in_seq_no INTEGER, admin_id INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 163
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 164
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE contacts(uid INTEGER PRIMARY KEY, mutual INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 165
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE wallpapers(uid INTEGER PRIMARY KEY, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 166
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 167
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE blocked_users(uid INTEGER PRIMARY KEY)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 168
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, document BLOB, PRIMARY KEY (id, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 170
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 171
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 172
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 173
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 174
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 175
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 176
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 177
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 178
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 179
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE bot_info(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 180
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 181
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 184
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "PRAGMA user_version = 41"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 188
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE turbo_idm(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41a} :catch_450

    .line 234
    :cond_41a
    :goto_41a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V

    .line 235
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V

    .line 236
    return-void

    .line 190
    :cond_421
    :try_start_421
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "PRAGMA user_version"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 191
    .local v4, "version":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current db version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 192
    if-nez v4, :cond_469

    .line 193
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "malformed"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_421 .. :try_end_450} :catch_450

    .line 227
    .end local v4    # "version":I
    :catch_450
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 229
    if-eqz p1, :cond_41a

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "malformed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41a

    .line 230
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    .line 231
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    goto :goto_41a

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "version":I
    :cond_469
    :try_start_469
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "SELECT seq, pts, date, qts, lsv, sg, pbytes FROM params WHERE id = 1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 197
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_4ae

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 199
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 200
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 201
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 202
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 203
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 204
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4ba

    .line 205
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 213
    :cond_4ae
    :goto_4ae
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_4b1
    .catch Ljava/lang/Exception; {:try_start_469 .. :try_end_4b1} :catch_4ce

    .line 223
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_4b1
    const/16 v5, 0x29

    if-ge v4, v5, :cond_41a

    .line 224
    :try_start_4b5
    invoke-direct {p0, v4}, Lorg/telegram/messenger/MessagesStorage;->updateDbToLastVersion(I)V
    :try_end_4b8
    .catch Ljava/lang/Exception; {:try_start_4b5 .. :try_end_4b8} :catch_450

    goto/16 :goto_41a

    .line 207
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4ba
    const/4 v5, 0x6

    :try_start_4bb
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 208
    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    if-eqz v5, :cond_4ae

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    array-length v5, v5

    if-ne v5, v9, :cond_4ae

    .line 209
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B
    :try_end_4cd
    .catch Ljava/lang/Exception; {:try_start_4bb .. :try_end_4cd} :catch_4ce

    goto :goto_4ae

    .line 214
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :catch_4ce
    move-exception v2

    .line 215
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4cf
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4d2
    .catch Ljava/lang/Exception; {:try_start_4cf .. :try_end_4d2} :catch_450

    .line 217
    :try_start_4d2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "CREATE TABLE IF NOT EXISTS params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 218
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4f0
    .catch Ljava/lang/Exception; {:try_start_4d2 .. :try_end_4f0} :catch_4f1

    goto :goto_4b1

    .line 219
    :catch_4f1
    move-exception v3

    .line 220
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_4f2
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4f5
    .catch Ljava/lang/Exception; {:try_start_4f2 .. :try_end_4f5} :catch_450

    goto :goto_4b1
.end method

.method public overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V
    .registers 6
    .param p1, "channel_id"    # I
    .param p2, "difference"    # Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;
    .param p3, "newDialogType"    # I

    .prologue
    .line 4110
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$66;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$66;-><init>(Lorg/telegram/messenger/MessagesStorage;IILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4176
    return-void
.end method

.method public processPendingRead(JJI)V
    .registers 15
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # J
    .param p5, "max_date"    # I

    .prologue
    .line 2300
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$39;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$39;-><init>(Lorg/telegram/messenger/MessagesStorage;JJI)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2346
    return-void
.end method

.method public putBlockedUsers(Ljava/util/ArrayList;Z)V
    .registers 5
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1298
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1322
    :cond_8
    :goto_8
    return-void

    .line 1301
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$20;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$20;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public putCachedPhoneBook(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2417
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$43;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$43;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2451
    return-void
.end method

.method public putChannelViews(Landroid/util/SparseArray;Z)V
    .registers 5
    .param p2, "isChannel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4179
    .local p1, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$67;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$67;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4208
    return-void
.end method

.method public putContacts(Ljava/util/ArrayList;Z)V
    .registers 6
    .param p2, "deleteAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2349
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2376
    :goto_6
    return-void

    .line 2352
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2353
    .local v0, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$40;

    invoke-direct {v2, p0, p2, v0}, Lorg/telegram/messenger/MessagesStorage$40;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .registers 5
    .param p1, "did"    # I
    .param p2, "photos"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .prologue
    .line 1589
    if-eqz p2, :cond_a

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1616
    :cond_a
    :goto_a
    return-void

    .line 1592
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$26;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$26;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .registers 5
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p2, "check"    # Z

    .prologue
    .line 6173
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6183
    :goto_8
    return-void

    .line 6176
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$83;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$83;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .registers 6
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 3592
    if-nez p1, :cond_3

    .line 3669
    :goto_2
    return-void

    .line 3595
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$60;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$60;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZI)V
    .registers 13
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZI)V"
        }
    .end annotation

    .prologue
    .line 4620
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    .line 4621
    return-void
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZIZ)V
    .registers 15
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .param p6, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZIZ)V"
        }
    .end annotation

    .prologue
    .line 4624
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 4668
    :goto_6
    return-void

    .line 4627
    :cond_7
    if-eqz p3, :cond_1a

    .line 4628
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$69;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$69;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_1a
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 4666
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    goto :goto_6
.end method

.method public putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
    .registers 17
    .param p1, "messages"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "load_type"    # I
    .param p5, "max_id"    # I
    .param p6, "createDialog"    # Z

    .prologue
    .line 5542
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$79;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$79;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5707
    return-void
.end method

.method public putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "type"    # I

    .prologue
    .line 3328
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 3370
    :cond_4
    :goto_4
    return-void

    .line 3331
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$52;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$52;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .registers 7
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3915
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3928
    :goto_10
    return-void

    .line 3918
    :cond_11
    if-eqz p4, :cond_1e

    .line 3919
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$61;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$61;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 3926
    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_10
.end method

.method public putWallpapers(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1059
    .local p1, "wallPapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$WallPaper;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$12;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public putWebPages(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4023
    .local p1, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4107
    :cond_8
    :goto_8
    return-void

    .line 4026
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$65;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$65;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public putWebRecent(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$16;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1222
    return-void
.end method

.method public removeFromDownloadQueue(JIZ)V
    .registers 12
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "move"    # Z

    .prologue
    .line 3931
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$62;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$62;-><init>(Lorg/telegram/messenger/MessagesStorage;ZIJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3953
    return-void
.end method

.method public removePendingTask(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 687
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$6;-><init>(Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method public saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 1902
    if-eqz p2, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1929
    :cond_8
    :goto_8
    return-void

    .line 1905
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$32;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$32;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public saveChannelPts(II)V
    .registers 5
    .param p1, "channelId"    # I
    .param p2, "pts"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$8;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$8;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method

.method public saveDiffParams(IIII)V
    .registers 12
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "qts"    # I

    .prologue
    .line 839
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$9;-><init>(Lorg/telegram/messenger/MessagesStorage;IIII)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method

.method public saveSecretParams(II[B)V
    .registers 6
    .param p1, "lsv"    # I
    .param p2, "sg"    # I
    .param p3, "pbytes"    # [B

    .prologue
    .line 584
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$3;-><init>(Lorg/telegram/messenger/MessagesStorage;II[B)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method public setDialogFlags(JJ)V
    .registers 12
    .param p1, "did"    # J
    .param p3, "flags"    # J

    .prologue
    .line 865
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$10;-><init>(Lorg/telegram/messenger/MessagesStorage;JJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public setDialogPinned(JI)V
    .registers 7
    .param p1, "did"    # J
    .param p3, "pinned"    # I

    .prologue
    .line 6138
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$82;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$82;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6170
    return-void
.end method

.method public setMessageSeq(III)V
    .registers 6
    .param p1, "mid"    # I
    .param p2, "seq_in"    # I
    .param p3, "seq_out"    # I

    .prologue
    .line 4742
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$71;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$71;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4758
    return-void
.end method

.method public startTransaction(Z)V
    .registers 5
    .param p1, "useQueue"    # Z

    .prologue
    .line 3244
    if-eqz p1, :cond_d

    .line 3245
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$49;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$49;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3262
    :goto_c
    return-void

    .line 3257
    :cond_d
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_c

    .line 3258
    :catch_13
    move-exception v0

    .line 3259
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6079
    .local p1, "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$81;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$81;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6135
    return-void
.end method

.method public updateChannelPinnedMessage(II)V
    .registers 5
    .param p1, "channelId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 2034
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$35;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$35;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2077
    return-void
.end method

.method public updateChannelUsers(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "channel_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1868
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChannelParticipant;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$31;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1899
    return-void
.end method

.method public updateChatInfo(IIIII)V
    .registers 14
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "what"    # I
    .param p4, "invited_id"    # I
    .param p5, "version"    # I

    .prologue
    .line 2080
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$36;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$36;-><init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2162
    return-void
.end method

.method public updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .registers 5
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p2, "ifExist"    # Z

    .prologue
    .line 1971
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$34;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$34;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2031
    return-void
.end method

.method public updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .registers 4
    .param p1, "participants"    # Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .prologue
    .line 1821
    if-nez p1, :cond_3

    .line 1865
    :goto_2
    return-void

    .line 1824
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$30;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    .registers 7
    .param p3, "useQueue"    # Z
    .param p4, "channelId"    # I
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
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 5296
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "additionalDialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p4, :cond_9

    .line 5309
    :goto_8
    return-void

    .line 5299
    :cond_9
    if-eqz p3, :cond_16

    .line 5300
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$77;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage$77;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 5307
    :cond_16
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_8
.end method

.method public updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .registers 6
    .param p3, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1805
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1818
    :goto_6
    return-void

    .line 1808
    :cond_7
    if-eqz p3, :cond_14

    .line 1809
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$29;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$29;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 1816
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_6
.end method

.method public updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3448
    if-nez p1, :cond_3

    .line 3511
    :goto_2
    return-void

    .line 3451
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$56;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$56;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3424
    if-nez p1, :cond_3

    .line 3445
    :goto_2
    return-void

    .line 3427
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$55;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$55;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3373
    if-nez p1, :cond_3

    .line 3397
    :goto_2
    return-void

    .line 3376
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$53;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$53;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3400
    if-nez p1, :cond_3

    .line 3421
    :goto_2
    return-void

    .line 3403
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$54;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$54;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J
    .registers 17
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "useQueue"    # Z
    .param p7, "channelId"    # I

    .prologue
    .line 4878
    if-eqz p6, :cond_15

    .line 4879
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$72;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$72;-><init>(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4888
    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    .line 4886
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    goto :goto_14
.end method

.method public updateUsers(Ljava/util/ArrayList;ZZZ)V
    .registers 7
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 4960
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4973
    :goto_6
    return-void

    .line 4963
    :cond_7
    if-eqz p4, :cond_14

    .line 4964
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$73;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$73;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 4971
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    goto :goto_6
.end method
