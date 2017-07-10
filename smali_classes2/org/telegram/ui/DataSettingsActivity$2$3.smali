.class Lorg/telegram/ui/DataSettingsActivity$2$3;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataSettingsActivity$2;

.field final synthetic val$position:I

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity$2;Landroid/content/SharedPreferences;I)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/DataSettingsActivity$2;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->val$preferences:Landroid/content/SharedPreferences;

    iput p3, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 246
    const/4 v0, -0x1

    .line 247
    .local v0, "val":I
    packed-switch p2, :pswitch_data_34

    .line 258
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "VoipDataSaving"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity$2$3;->val$position:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 264
    :cond_2d
    return-void

    .line 249
    :pswitch_2e
    const/4 v0, 0x0

    .line 250
    goto :goto_4

    .line 252
    :pswitch_30
    const/4 v0, 0x1

    .line 253
    goto :goto_4

    .line 255
    :pswitch_32
    const/4 v0, 0x2

    goto :goto_4

    .line 247
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method
