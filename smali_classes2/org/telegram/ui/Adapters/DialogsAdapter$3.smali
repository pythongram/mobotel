.class Lorg/telegram/ui/Adapters/DialogsAdapter$3;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUsersByStatus()V
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
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsAdapter;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 169
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .registers 14
    .param p1, "tl_dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "tl_dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const v10, 0xc350

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 173
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 174
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 175
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 176
    .local v1, "status2":I
    if-eqz v2, :cond_3e

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_3e

    .line 177
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_5d

    .line 178
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v0, v7, v10

    .line 183
    :cond_3e
    :goto_3e
    if-eqz v3, :cond_56

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_56

    .line 184
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_62

    .line 185
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    add-int v1, v7, v10

    .line 190
    :cond_56
    :goto_56
    if-lez v0, :cond_6d

    if-lez v1, :cond_6d

    .line 191
    if-le v0, v1, :cond_67

    .line 209
    :cond_5c
    :goto_5c
    return v4

    .line 180
    :cond_5d
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3e

    .line 187
    :cond_62
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_56

    .line 193
    :cond_67
    if-ge v0, v1, :cond_6b

    move v4, v5

    .line 194
    goto :goto_5c

    :cond_6b
    move v4, v6

    .line 196
    goto :goto_5c

    .line 197
    :cond_6d
    if-gez v0, :cond_79

    if-gez v1, :cond_79

    .line 198
    if-gt v0, v1, :cond_5c

    .line 200
    if-ge v0, v1, :cond_77

    move v4, v5

    .line 201
    goto :goto_5c

    :cond_77
    move v4, v6

    .line 203
    goto :goto_5c

    .line 204
    :cond_79
    if-gez v0, :cond_7d

    if-gtz v1, :cond_81

    :cond_7d
    if-nez v0, :cond_83

    if-eqz v1, :cond_83

    :cond_81
    move v4, v5

    .line 205
    goto :goto_5c

    .line 206
    :cond_83
    if-gez v1, :cond_87

    if-gtz v0, :cond_5c

    :cond_87
    if-nez v1, :cond_8b

    if-nez v0, :cond_5c

    :cond_8b
    move v4, v6

    .line 209
    goto :goto_5c
.end method
