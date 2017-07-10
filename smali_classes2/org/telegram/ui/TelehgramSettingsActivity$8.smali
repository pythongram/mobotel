.class Lorg/telegram/ui/TelehgramSettingsActivity$8;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 1480
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$8;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$8;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5200(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$8;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->needLayout()V
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5100(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$8;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5300(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1487
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
