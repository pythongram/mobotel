.class Lorg/telegram/ui/TelehgramSettingsActivity$4$4;
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

.field final synthetic val$picker:Landroid/widget/NumberPicker;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;Landroid/content/SharedPreferences;Landroid/widget/NumberPicker;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 632
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$picker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 634
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 635
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "answeringmachinetime"

    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$picker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 636
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$picker:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;->val$picker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 638
    return-void
.end method
