.class Lorg/telegram/ui/DialogsActivity$8$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$8;

.field final synthetic val$def:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$8;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$8;

    .prologue
    .line 492
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$8$1;->val$def:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 495
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 496
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 497
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_45

    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$8;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$8;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$8;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    # invokes: Lorg/telegram/ui/DialogsActivity;->createTabsDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    invoke-static {v3, v4, v0}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 500
    const-string v3, "Done"

    const v4, 0x7f0701e8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$8;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 507
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_44
    :goto_44
    return-void

    .line 502
    :cond_45
    if-ne p2, v6, :cond_56

    .line 503
    const-string v4, "defTab"

    iget v5, p0, Lorg/telegram/ui/DialogsActivity$8$1;->val$def:I

    if-nez v5, :cond_4e

    const/4 v3, -0x1

    :cond_4e
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_44

    .line 504
    :cond_56
    const/4 v3, 0x2

    if-ne p2, v3, :cond_44

    .line 505
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$8$1;->this$1:Lorg/telegram/ui/DialogsActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$8;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V
    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_44
.end method
