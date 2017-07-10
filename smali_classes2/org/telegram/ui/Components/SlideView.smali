.class public Lorg/telegram/ui/Components/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public needBackButton()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public onDestroyActivity()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onNextPressed()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public onShow()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 27
    return-void
.end method
