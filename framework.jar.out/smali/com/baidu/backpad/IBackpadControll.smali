.class public interface abstract Lcom/baidu/backpad/IBackpadControll;
.super Ljava/lang/Object;
.source "IBackpadControll.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/backpad/IBackpadControll$Stub;
    }
.end annotation


# virtual methods
.method public abstract isEnabled(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnabled(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
