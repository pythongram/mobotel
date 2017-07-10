.class Lorg/telegram/ui/TelehgramSettingsActivity$4$12;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 1137
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$12;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1140
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1141
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sortContactsBy"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1144
    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$12;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1145
    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$12;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1147
    :cond_2a
    return-void
.end method
