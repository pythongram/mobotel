.class Lorg/telegram/ui/PasscodeActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 128
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity;->finishFragment()V

    .line 143
    :cond_9
    :goto_9
    return-void

    .line 130
    :cond_a
    if-ne p1, v1, :cond_28

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processNext()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$100(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_9

    .line 133
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_9

    .line 136
    :cond_28
    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/PasscodeActivity;->access$302(Lorg/telegram/ui/PasscodeActivity;I)I

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$400(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_9

    .line 139
    :cond_37
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # setter for: Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/PasscodeActivity;->access$302(Lorg/telegram/ui/PasscodeActivity;I)I

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$1;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$400(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_9
.end method
