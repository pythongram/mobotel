.class Lorg/telegram/ui/TelehgramSettingsActivity$4$6;
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

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 658
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 660
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "answeringmachineanswer"

    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    return-void
.end method
