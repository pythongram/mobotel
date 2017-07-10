.class Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;
.super Ljava/lang/Object;
.source "FavoriteMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iput p2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->access$000(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->val$position:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 98
    .local v1, "did":I
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 100
    const-string v2, "AreYouSureToContinue"

    const v3, 0x7f070654

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 101
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;I)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 114
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 115
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 116
    return-void
.end method
