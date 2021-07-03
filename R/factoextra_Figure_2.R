# Copyright (C) 2021  Abdulazeez Giwa <abdulazeez.giwa@lasu.edu.ng>
#                     Oluwaseun Adu <oluwaseun.adu160581014@st.lasu.edu.ng>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>

library(factoextra)
data <- as.matrix(read.csv("clustering_hdlbcl_13CpGs.csv", row.names=1))
data <- t(data)
res.hk <- hkmeans(data, 2)
png(file = "Figure_2.png", width = 4000, height = 3000, res=400)
hkmeans_tree(res.hk, cex=0.6, main="")
dev.off()
