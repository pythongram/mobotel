.class Lorg/telegram/ui/TelehgramSettingsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TelehgramSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 304
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->finishFragment()V

    .line 324
    :cond_8
    :goto_8
    return-void

    .line 306
    :cond_9
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    new-instance v2, Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {v2}, Lorg/telegram/ui/ChangeNameActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_8

    .line 308
    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "AreYouSureLogout"

    const v2, 0x7f0700ad

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 314
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TelehgramSettingsActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$1$1;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$1;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8
.end method
