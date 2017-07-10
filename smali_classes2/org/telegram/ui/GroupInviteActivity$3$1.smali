.class Lorg/telegram/ui/GroupInviteActivity$3$1;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupInviteActivity$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/GroupInviteActivity$3;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 216
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_5d

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v2, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v2, v1}, Lorg/telegram/ui/GroupInviteActivity;->access$202(Lorg/telegram/ui/GroupInviteActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-boolean v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->val$newRequest:Z

    if-eqz v1, :cond_5d

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_20

    .line 231
    :goto_1f
    return-void

    .line 222
    :cond_20
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "RevokeAlertNewLink"

    const v2, 0x7f0704a5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 224
    const-string v1, "RevokeLink"

    const v2, 0x7f0704a7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 225
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 229
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5d
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/GroupInviteActivity;->loading:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;->access$602(Lorg/telegram/ui/GroupInviteActivity;Z)Z

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$700(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_1f
.end method
