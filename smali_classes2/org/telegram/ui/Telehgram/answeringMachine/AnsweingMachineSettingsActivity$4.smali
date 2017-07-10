.class Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;
.super Ljava/lang/Object;
.source "AnsweingMachineSettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$600(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$700(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 264
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
