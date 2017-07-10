.class final Lorg/telegram/ui/Components/AlertsCreator$10;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$globalGroup:Z

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([IZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 738
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$globalGroup:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 741
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v4

    .line 743
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 744
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$globalGroup:Z

    if-eqz v2, :cond_3e

    const-string v2, "popupGroup"

    :goto_21
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$selected:[I

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_34

    .line 748
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    .line 750
    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_3d

    .line 751
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$10;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 753
    :cond_3d
    return-void

    .line 745
    :cond_3e
    const-string v2, "popupAll"

    goto :goto_21
.end method
