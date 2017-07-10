.class Lorg/telegram/ui/SettingsActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$4;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$4;Lorg/telegram/ui/Components/NumberPicker;I)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$4;

    .prologue
    .line 394
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4$1;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$4$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/SettingsActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 398
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fons_size"

    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$4$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$4$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$1;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 403
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$1;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/SettingsActivity$4$1;->val$position:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 405
    :cond_3e
    return-void
.end method
