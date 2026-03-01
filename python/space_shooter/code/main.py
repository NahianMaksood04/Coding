import pygame
import random

pygame.init()

w, h = 1000, 500
dis_surf = pygame.display.set_mode((w, h))
pygame.display.set_caption("space_shooter")
running = True


plane = pygame.image.load("../images/player.png").convert_alpha()
star = pygame.image.load("../images/star.png").convert_alpha()


while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    dis_surf.fill("black")

    dis_surf.blit(plane, (100, 400))

    pygame.display.update()

pygame.quit()
