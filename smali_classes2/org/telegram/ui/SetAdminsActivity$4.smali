.class Lorg/telegram/ui/SetAdminsActivity$4;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->updateChatParticipants()V
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
        "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 292
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$4;->compare(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    .registers 14
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 295
    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # invokes: Lorg/telegram/ui/SetAdminsActivity;->getChatAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    invoke-static {v9, p1}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v2

    .line 296
    .local v2, "type1":I
    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$4;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # invokes: Lorg/telegram/ui/SetAdminsActivity;->getChatAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I
    invoke-static {v9, p2}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)I

    move-result v3

    .line 297
    .local v3, "type2":I
    if-le v2, v3, :cond_12

    .line 332
    :cond_11
    :goto_11
    return v6

    .line 299
    :cond_12
    if-ge v2, v3, :cond_16

    move v6, v7

    .line 300
    goto :goto_11

    .line 301
    :cond_16
    if-ne v2, v3, :cond_74

    .line 302
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 303
    .local v4, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 304
    .local v5, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 305
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 306
    .local v1, "status2":I
    if-eqz v4, :cond_40

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_40

    .line 307
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 309
    :cond_40
    if-eqz v5, :cond_4a

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_4a

    .line 310
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 312
    :cond_4a
    if-lez v0, :cond_56

    if-lez v1, :cond_56

    .line 313
    if-gt v0, v1, :cond_11

    .line 315
    if-ge v0, v1, :cond_54

    move v6, v7

    .line 316
    goto :goto_11

    :cond_54
    move v6, v8

    .line 318
    goto :goto_11

    .line 319
    :cond_56
    if-gez v0, :cond_62

    if-gez v1, :cond_62

    .line 320
    if-gt v0, v1, :cond_11

    .line 322
    if-ge v0, v1, :cond_60

    move v6, v7

    .line 323
    goto :goto_11

    :cond_60
    move v6, v8

    .line 325
    goto :goto_11

    .line 326
    :cond_62
    if-gez v0, :cond_66

    if-gtz v1, :cond_6a

    :cond_66
    if-nez v0, :cond_6c

    if-eqz v1, :cond_6c

    :cond_6a
    move v6, v7

    .line 327
    goto :goto_11

    .line 328
    :cond_6c
    if-gez v1, :cond_70

    if-gtz v0, :cond_11

    :cond_70
    if-nez v1, :cond_74

    if-nez v0, :cond_11

    .end local v0    # "status1":I
    .end local v1    # "status2":I
    .end local v4    # "user1":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_74
    move v6, v8

    .line 332
    goto :goto_11
.end method
