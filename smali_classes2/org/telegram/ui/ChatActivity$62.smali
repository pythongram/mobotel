.class Lorg/telegram/ui/ChatActivity$62;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4245
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "activity"    # Lorg/telegram/ui/DocumentSelectActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DocumentSelectActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 4248
    invoke-virtual {p1}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment()V

    .line 4249
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    move-object v0, p2

    move-object v1, p2

    move-object v3, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 4250
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    move v1, v8

    move-object v3, v2

    move-object v4, v2

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4251
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 4252
    return-void
.end method

.method public startDocumentSelectActivity()V
    .registers 5

    .prologue
    .line 4257
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4258
    .local v1, "photoPickerIntent":Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4259
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 4263
    .end local v1    # "photoPickerIntent":Landroid/content/Intent;
    :goto_13
    return-void

    .line 4260
    :catch_14
    move-exception v0

    .line 4261
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method
