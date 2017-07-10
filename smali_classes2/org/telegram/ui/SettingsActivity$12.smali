.class Lorg/telegram/ui/SettingsActivity$12;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 1095
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$12;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$12;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4200(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$12;->this$0:Lorg/telegram/ui/SettingsActivity;

    # invokes: Lorg/telegram/ui/SettingsActivity;->needLayout()V
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3900(Lorg/telegram/ui/SettingsActivity;)V

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$12;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4300(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1102
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
