.class Lorg/telegram/ui/DialogsActivity$16;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$all:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 849
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$16;->val$all:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 853
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$16;->val$all:Z

    if-eqz v1, :cond_41

    .line 854
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v10

    .line 855
    .local v10, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-eqz v10, :cond_6e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 856
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 857
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 858
    .local v9, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v1, :cond_3e

    .line 859
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_read:I

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 856
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 866
    .end local v0    # "a":I
    .end local v9    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v10    # "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    :cond_41
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 867
    .restart local v9    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v1, :cond_6e

    .line 868
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_read:I

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 870
    .end local v9    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_6e
    return-void
.end method
