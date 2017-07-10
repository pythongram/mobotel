.class Lorg/telegram/ui/TwoStepVerificationActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TwoStepVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$1;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 148
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$1;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    .line 153
    :cond_8
    :goto_8
    return-void

    .line 150
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$1;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$000(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    goto :goto_8
.end method
