.class Lorg/telegram/ui/ChannelUsersActivity$6$1$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelUsersActivity$6$1;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 407
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .registers 13
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    const v9, 0xc350

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 410
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 411
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 412
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 413
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 414
    .local v1, "status2":I
    if-eqz v2, :cond_3c

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_3c

    .line 415
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_5b

    .line 416
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v0, v7, v9

    .line 421
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_54

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_54

    .line 422
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_60

    .line 423
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v1, v7, v9

    .line 428
    :cond_54
    :goto_54
    if-lez v0, :cond_6b

    if-lez v1, :cond_6b

    .line 429
    if-le v0, v1, :cond_65

    .line 447
    :cond_5a
    :goto_5a
    return v4

    .line 418
    :cond_5b
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3c

    .line 425
    :cond_60
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_54

    .line 431
    :cond_65
    if-ge v0, v1, :cond_69

    move v4, v5

    .line 432
    goto :goto_5a

    :cond_69
    move v4, v6

    .line 434
    goto :goto_5a

    .line 435
    :cond_6b
    if-gez v0, :cond_77

    if-gez v1, :cond_77

    .line 436
    if-gt v0, v1, :cond_5a

    .line 438
    if-ge v0, v1, :cond_75

    move v4, v5

    .line 439
    goto :goto_5a

    :cond_75
    move v4, v6

    .line 441
    goto :goto_5a

    .line 442
    :cond_77
    if-gez v0, :cond_7b

    if-gtz v1, :cond_7f

    :cond_7b
    if-nez v0, :cond_81

    if-eqz v1, :cond_81

    :cond_7f
    move v4, v5

    .line 443
    goto :goto_5a

    .line 444
    :cond_81
    if-gez v1, :cond_85

    if-gtz v0, :cond_5a

    :cond_85
    if-nez v1, :cond_89

    if-nez v0, :cond_5a

    :cond_89
    move v4, v6

    .line 447
    goto :goto_5a
.end method
