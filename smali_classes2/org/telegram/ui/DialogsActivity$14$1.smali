.class Lorg/telegram/ui/DialogsActivity$14$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$14;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$14;

.field final synthetic val$def:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$14;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$14;

    .prologue
    .line 688
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14$1;->this$1:Lorg/telegram/ui/DialogsActivity$14;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$14$1;->val$def:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    .line 691
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 692
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 693
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_21

    .line 694
    const-string v3, "defTab"

    iget v4, p0, Lorg/telegram/ui/DialogsActivity$14$1;->val$def:I

    if-ne v4, v2, :cond_19

    const/4 v2, -0x1

    :cond_19
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    :cond_20
    :goto_20
    return-void

    .line 695
    :cond_21
    if-ne p2, v6, :cond_20

    .line 696
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$14$1;->this$1:Lorg/telegram/ui/DialogsActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V
    invoke-static {v2, v6}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_20
.end method
