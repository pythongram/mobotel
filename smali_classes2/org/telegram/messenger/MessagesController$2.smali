.class Lorg/telegram/messenger/MessagesController$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
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
        "Lorg/telegram/tgnet/TLRPC$Update;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 246
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Update;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$2;->compare(Lorg/telegram/tgnet/TLRPC$Update;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Update;Lorg/telegram/tgnet/TLRPC$Update;)I
    .registers 9
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Update;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 249
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p1}, Lorg/telegram/messenger/MessagesController;->access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v1

    .line 250
    .local v1, "ltype":I
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p2}, Lorg/telegram/messenger/MessagesController;->access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v3

    .line 251
    .local v3, "rtype":I
    if-eq v1, v3, :cond_13

    .line 252
    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    .line 266
    :goto_12
    return v4

    .line 253
    :cond_13
    if-nez v1, :cond_1e

    .line 254
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_12

    .line 255
    :cond_1e
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2a

    .line 256
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_12

    .line 257
    :cond_2a
    const/4 v4, 0x2

    if-ne v1, v4, :cond_49

    .line 258
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p1}, Lorg/telegram/messenger/MessagesController;->access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    .line 259
    .local v0, "lChannel":I
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p2}, Lorg/telegram/messenger/MessagesController;->access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v2

    .line 260
    .local v2, "rChannel":I
    if-ne v0, v2, :cond_44

    .line 261
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_12

    .line 263
    :cond_44
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_12

    .line 266
    .end local v0    # "lChannel":I
    .end local v2    # "rChannel":I
    :cond_49
    const/4 v4, 0x0

    goto :goto_12
.end method
