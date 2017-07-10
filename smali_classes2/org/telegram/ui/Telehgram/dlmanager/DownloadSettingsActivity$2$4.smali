.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;
.super Ljava/lang/Object;
.source "DownloadSettingsActivity.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iput p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V
    .registers 9
    .param p1, "view"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    .line 243
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "download_ehour"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    const-string v1, "download_eminute"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->saveReminder()V

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$4;->val$position:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 251
    :cond_3d
    return-void
.end method
