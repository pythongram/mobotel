.class Lorg/telegram/ui/DialogsActivity$14;
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
    .line 676
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 679
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v7, "Favorites"

    const v8, 0x7f0706fa

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 682
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 683
    .local v4, "plusPreferences":Landroid/content/SharedPreferences;
    const/16 v6, 0x8

    .line 684
    .local v6, "tabVal":I
    const-string v7, "sortFavs"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 685
    .local v5, "sort":I
    const-string v7, "defTab"

    const/4 v8, -0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 686
    .local v2, "def":I
    const/16 v7, 0x8

    if-ne v2, v7, :cond_5f

    const-string v7, "ResetDefaultTab"

    const v8, 0x7f070793

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "cs":Ljava/lang/CharSequence;
    :goto_3d
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v1, v3, v9

    const-string v7, "MarkAllAsRead"

    const v8, 0x7f070754

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    .line 688
    .local v3, "items":[Ljava/lang/CharSequence;
    new-instance v7, Lorg/telegram/ui/DialogsActivity$14$1;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/DialogsActivity$14$1;-><init>(Lorg/telegram/ui/DialogsActivity$14;I)V

    invoke-virtual {v0, v3, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 701
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 702
    return v10

    .line 686
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .end local v3    # "items":[Ljava/lang/CharSequence;
    :cond_5f
    const-string v7, "SetAsDefaultTab"

    const v8, 0x7f0707b4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method
