.class Lorg/telegram/ui/GroupInviteActivity$2;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupInviteActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 125
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_9

    .line 165
    :cond_8
    :goto_8
    return-void

    .line 128
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-eq p2, v5, :cond_19

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkRow:I
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_59

    .line 129
    :cond_19
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 133
    :try_start_21
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 134
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    const-string v5, "label"

    iget-object v6, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v6}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 135
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 136
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "LinkCopied"

    const v7, 0x7f0702e0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_53} :catch_54

    goto :goto_8

    .line 137
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    :catch_54
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_59
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_a2

    .line 141
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 145
    :try_start_69
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v6}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "InviteToGroupByLink"

    const v7, 0x7f0702a3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9a} :catch_9c

    goto/16 :goto_8

    .line 149
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_9c
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a2
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_8

    .line 153
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v5, "RevokeAlert"

    const v6, 0x7f0704a4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 155
    const-string v5, "RevokeLink"

    const v6, 0x7f0704a7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 156
    const-string v5, "RevokeButton"

    const v6, 0x7f0704a6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/GroupInviteActivity$2$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupInviteActivity$2$1;-><init>(Lorg/telegram/ui/GroupInviteActivity$2;)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 162
    const-string v5, "Cancel"

    const v6, 0x7f0700fe

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 163
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8
.end method
