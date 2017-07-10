.class Lorg/telegram/messenger/MessagesController$1;
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
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
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
    .line 217
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$1;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 217
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .registers 11
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 220
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v6, :cond_c

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_c

    .line 242
    :cond_b
    :goto_b
    return v3

    .line 222
    :cond_c
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_16

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v6, :cond_16

    move v3, v4

    .line 223
    goto :goto_b

    .line 224
    :cond_16
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_2e

    iget-boolean v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v6, :cond_2e

    .line 225
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v6, v7, :cond_b

    .line 227
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v3, v6, :cond_2c

    move v3, v4

    .line 228
    goto :goto_b

    :cond_2c
    move v3, v5

    .line 230
    goto :goto_b

    .line 233
    :cond_2e
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 234
    .local v2, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v2, :cond_54

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v6, v7, :cond_54

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 235
    .local v0, "date1":I
    :goto_3e
    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_57

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v6, v7, :cond_57

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 237
    .local v1, "date2":I
    :goto_4e
    if-lt v0, v1, :cond_b

    .line 239
    if-le v0, v1, :cond_5a

    move v3, v4

    .line 240
    goto :goto_b

    .line 234
    .end local v0    # "date1":I
    .end local v1    # "date2":I
    :cond_54
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_3e

    .line 236
    .restart local v0    # "date1":I
    :cond_57
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_4e

    .restart local v1    # "date2":I
    :cond_5a
    move v3, v5

    .line 242
    goto :goto_b
.end method
