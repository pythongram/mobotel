.class Lorg/telegram/ui/DialogsActivity$11;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->initTabs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 590
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v8, "SuperGroups"

    const v9, 0x7f0707e5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 593
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 594
    .local v5, "plusPreferences":Landroid/content/SharedPreferences;
    const/4 v7, 0x7

    .line 595
    .local v7, "tabVal":I
    const-string v8, "defTab"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 596
    .local v2, "def":I
    const-string v8, "sortSGroups"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 597
    .local v6, "sort":I
    const-string v8, "hideSGroups"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 598
    .local v3, "hideSGroups":Z
    const/4 v8, 0x7

    if-ne v2, v8, :cond_63

    const-string v8, "ResetDefaultTab"

    const v9, 0x7f070793

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "cs2":Ljava/lang/CharSequence;
    :goto_41
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/CharSequence;

    aput-object v1, v4, v10

    const-string v8, "MarkAllAsRead"

    const v9, 0x7f070754

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 601
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v8, Lorg/telegram/ui/DialogsActivity$11$1;

    invoke-direct {v8, p0, v2}, Lorg/telegram/ui/DialogsActivity$11$1;-><init>(Lorg/telegram/ui/DialogsActivity$11;I)V

    invoke-virtual {v0, v4, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 614
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 615
    return v11

    .line 598
    .end local v1    # "cs2":Ljava/lang/CharSequence;
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_63
    const-string v8, "SetAsDefaultTab"

    const v9, 0x7f0707b4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_41
.end method
