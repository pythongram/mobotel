.class Lorg/telegram/ui/SessionsActivity$2;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SessionsActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0703d4

    const v4, 0x7f0700fe

    const v3, 0x7f070092

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5c

    .line 156
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 241
    :cond_1a
    :goto_1a
    return-void

    .line 159
    :cond_1b
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSureSessions"

    const v2, 0x7f0700b0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 161
    const-string v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 162
    const-string v1, "OK"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$2$1;-><init>(Lorg/telegram/ui/SessionsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 193
    const-string v1, "Cancel"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SessionsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1a

    .line 195
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5c
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-lt p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ge p2, v1, :cond_1a

    .line 196
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "TerminateSessionQuestion"

    const v2, 0x7f070536

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 198
    const-string v1, "AppName"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 199
    const-string v1, "OK"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$2$2;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/SessionsActivity$2$2;-><init>(Lorg/telegram/ui/SessionsActivity$2;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 238
    const-string v1, "Cancel"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SessionsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1a
.end method
