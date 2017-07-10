.class Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DeleteContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5
    .param p1, "var1"    # I

    .prologue
    .line 191
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->finishFragment()V

    .line 207
    :cond_8
    :goto_8
    return-void

    .line 193
    :cond_9
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "var2":Landroid/app/AlertDialog$Builder;
    const-string v1, "AreYouSureDeleteContact"

    const v2, 0x7f0700a8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 196
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1$1;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;->this$0:Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8
.end method
