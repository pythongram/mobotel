.class Lorg/telegram/ui/ChatActivity$89$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$89;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$89;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$89;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$89;

    .prologue
    .line 9561
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$89$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 9564
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$12502(Lorg/telegram/ui/ChatActivity;I)I

    .line 9565
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v1, :cond_5b

    .line 9566
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9567
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9568
    const-string v1, "EditMessageError"

    const v2, 0x7f0701ed

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9569
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9570
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 9572
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_5a

    .line 9573
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 9580
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5a
    :goto_5a
    return-void

    .line 9576
    :cond_5b
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_5a

    .line 9577
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$89$1;->this$1:Lorg/telegram/ui/ChatActivity$89;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$89;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    goto :goto_5a
.end method
