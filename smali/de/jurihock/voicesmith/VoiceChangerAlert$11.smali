.class Lde/jurihock/voicesmith/VoiceChangerAlert$11;
.super Ljava/lang/Object;
.source "VoiceChangerAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/jurihock/voicesmith/VoiceChangerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;


# direct methods
.method constructor <init>(Lde/jurihock/voicesmith/VoiceChangerAlert;)V
    .registers 2
    .param p1, "this$0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 263
    iput-object p1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$11;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$11;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    invoke-virtual {v0}, Lde/jurihock/voicesmith/VoiceChangerAlert;->dismiss()V

    .line 267
    return-void
.end method
